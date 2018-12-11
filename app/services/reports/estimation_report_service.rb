# frozen_string_literal: true

module Reports
  class EstimationReportService < BaseService
    def initialize(options)
      @filters = options[:filters] || {}
      @pagination = options[:pagination] || {}
    end

    def call
      { json: data }
    end

    private

    attr_reader :filters, :pagination

    def data
      { data: entities, meta: meta }
    end

    def entities
      entities_grouped_by_ticket.reduce([]) do |acum, (ticket, entries)|
        acum << {
          projects: entries.map { |t| { id: t.project.id, name: t.project.name } }.uniq,
          details: ticket,
          created_at: entries.last.date.strftime('%d %b, %Y'),
          trello_labels: formatted_labels(entries.last.trello_labels)[:labels],
          estimate: formatted_labels(entries.last.trello_labels)[:estimate],
          status: trello_list[entries.last.trello_ticket_id].try(:[], 'name'),
          total_time: (entries.pluck(:minutes).sum / 60.0).round(1),
          collaborators: entries.map { |t| { id: t.user.id, name: t.user.name } }.uniq
        }
      end
    end

    def entities_grouped_by_ticket
      time_entries.paginate(pagination)
                  .group_by { |t| t.ticket || t.details&.downcase }
                  .each { |_k, v| v.sort! { |a, b| a.created_at <=> b.created_at } }
    end

    def meta
      { total_count: time_entries.count }
    end

    def time_entries
      @time_entries ||= TimeEntry.includes(:project, :user).filter(filters)
    end

    def trello_ticket_ids
      @trello_ticket_ids ||= time_entries.map(&:trello_ticket_id).reject(&:blank?)
    end

    def trello_list
      @trello_list ||= ::Reports::TrelloListService.call(trello_ticket_ids)
    end

    def filtering_params
      params.permit(:date_from, :with_ticket, :date_to, by_projects: [], by_users: [])
    end

    def formatted_labels(trello_labels)
      return {} if trello_labels.blank?

      labels = if trello_labels.is_a? Array
                 trello_labels.flatten.compact.uniq
               else
                 trello_labels.split(',')
               end
      regexp = /^\d+$/
      labels = {
        estimate: labels.select { |l| l.match(regexp) },
        labels:   labels.reject { |l| l.match(regexp) }
      }
      labels.each { |k, v| labels[k] = v.to_s.gsub(/[{}"\[\]\\]/, '') }
    end
  end
end
