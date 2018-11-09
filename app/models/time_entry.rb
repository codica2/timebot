# frozen_string_literal: true

class TimeEntry < ApplicationRecord
  include Paginationable
  include Filterable

  belongs_to :user
  belongs_to :project
  has_one :team, through: :project

  before_save :save_labels, :save_ticket_url, :calc_minutes, :format_time

  validates :date, :time, presence: true

  scope :today, -> { where(date: Time.zone.now.to_date) }
  scope :yesterday, -> { where(date: (1.day.ago.beginning_of_day..1.day.ago.end_of_day)) }
  scope :current_week, -> { where(date: (Time.zone.now.beginning_of_week..Time.zone.now.to_date)) }
  scope :last_week, -> { where(date: (1.week.ago.beginning_of_week.to_date..1.week.ago.end_of_week.to_date)) }
  scope :current_month, -> { where(date: (Time.zone.now.beginning_of_month.to_date..Time.zone.now.to_date)) }
  scope :in_interval, ->(start_date, end_date) { where(['date BETWEEN ? AND ?', start_date, end_date]) }
  scope :with_ticket, ->(ticket_url) { where("lower(details) LIKE ?", "%#{ticket_url.downcase}%") }
  scope :by_users, ->(users_id) { where(user_id: users_id) }
  scope :by_projects, ->(projects_id) { where(project_id: projects_id) }
  scope :date_from, ->(date) { where('date >= ?', date) }
  scope :date_to, ->(date) { where('date <= ?', date) }

  def description
    "*#{id}: #{project.name}* - #{time} - #{details}"
  end

  def ticket_url
    return if details.blank?
    URI.extract(details).first
  end

  def trello_ticket_id
    url = ticket_url
    return if url.blank?
    regexp = /\/[a-zA-Z0-9]{8}\//
    id = url.scan(regexp).first
    id.gsub('/', '') if id.present?
  end

  # such logic might need to be moved to client side
  def trello_list_name
    return if trello_ticket_id.blank?
    Trello::Card.find(trello_ticket_id).list.name
  rescue => e
    return nil
  end

  
  # needs refactoring
  def total_time
    search_param = ticket_url || details
    (TimeEntry.with_ticket(search_param).pluck(:minutes).sum / 60.0).round(1)
  end
  
  # needs refactoring
  def collaborators
    search_param = ticket_url || details
    TimeEntry.includes(:user).with_ticket(search_param).map(&:user).uniq
  end
  
  def estimated_time
    trello_labels.grep(/^\d+$/).first if trello_labels.present?
  end

  alias status trello_list_name

  private

  def save_labels
    self.trello_labels = trello_card_labels
  end

  def save_ticket_url
    url = ticket_url
    self.ticket = url if url.present?
  end

  def trello_card_labels
    return if trello_ticket_id.blank?
    begin
      card = Trello::Card.find(trello_ticket_id)
    rescue
      return nil
    end
    card.labels.map(&:name)
  end

  def calc_minutes
    match_data = self.time.match(/^(\d?\d):([0-5]\d)$/)
    self.minutes = match_data[1].to_i * 60 + match_data[2].to_i
  end

  def format_time
    format('%2d:%02d', self.minutes / 60, self.minutes % 60)
  end
end
