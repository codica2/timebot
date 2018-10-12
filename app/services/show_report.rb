# frozen_string_literal: true

class ShowReport < BaseService
  include ServiceHelper

  attr_reader :user, :text

  def initialize(user, text)
    @user = user
    @text = text.match(Message::Conditions::MESSAGE_IN_REPORT)
    super()
  end

  def call
    time         = text[:alias][1..-1].sub('l', 'last ').sub('d', 'day').sub('w', 'week').sub('m', 'month') if text[:alias]
    time         = text[:time].downcase unless text[:alias]
    project_name = text[:project].try(:downcase)

    if project_name.present?
      project = find_project_by_name(project_name)
      if project.present?
        handle_show_by(time, project)
      else
        sender.send_message(user, 'No such project.')
        handle_message_show_projects
      end
    else
      handle_show_by time
    end
  end

  private

  def handle_show_by(time, project = nil)
    case time
    when 'day'
      handle_report(Time.zone.today, Time.zone.today, project)
    when 'last day'
      handle_report(Time.zone.today - 1, Time.zone.today - 1, project)
    when 'week'
      handle_report(Time.zone.now.beginning_of_week.to_date, Time.zone.today, project)
    when 'last week'
      handle_report(1.week.ago.beginning_of_week.to_date, 1.week.ago.end_of_week.to_date, project)
    when 'month'
      handle_report(Time.zone.now.beginning_of_month.to_date, Time.zone.today, project)
    when 'last month'
      handle_report(1.month.ago.beginning_of_month.to_date, 1.month.ago.end_of_month.to_date, project)
    end
  end

  def handle_report(start_date, end_date, project)
    date = suitable_start_date(start_date)

    list = (date..end_date).to_a.map do |day|
      entries = user.time_entries.where(date: day)
      entries = entries.where(project_id: project.id) if project.present?
      entries unless entries.empty?
      entries.empty? ? [day, nil, []] : [day, entries.map(&:minutes).sum, entries.map(&:description).join("\n")]
    end

    strings = list.map do |day, minutes, entries|
      "`#{day.strftime('%d.%m.%y` (%A)')}: #{":timex: *#{format_time(minutes)}*" if minutes} #{entries.empty? ? 'No entries' : "\n#{entries}"}"
    end

    strings << "*Total*: #{user.total_time_for_range(start_date, end_date, project)}."
    sender.send_message(user, strings.join("\n"))
  end
end
