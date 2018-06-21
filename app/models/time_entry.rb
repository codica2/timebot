# frozen_string_literal: true
class TimeEntry < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_one :team, through: :project

  before_save :save_labels

  validates :date, presence: true
  validates :user_id, presence: true
  validates :project_id, presence: true
  validates :minutes, presence: true

  scope :today, -> { where(date: Time.zone.now.to_date) }
  scope :yesterday, -> { where(date: (1.day.ago.beginning_of_day..1.day.ago.end_of_day)) }
  scope :current_week, -> { where(date: (Time.zone.now.beginning_of_week..Time.zone.now.to_date)) }
  scope :last_week, -> { where(date: (1.week.ago.beginning_of_week.to_date..1.week.ago.end_of_week.to_date)) }
  scope :current_month, -> { where(date: (Time.zone.now.beginning_of_month.to_date..Time.zone.now.to_date)) }
  scope :in_interval, -> (start_date, end_date) { where(['date BETWEEN ? AND ?', start_date, end_date]) }

  def description
    "*#{id}: #{project.name}* - #{time} - #{details}"
  end

  def ticket_url
    regexp = /(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix
    details.gsub(/[<>]/, '').scan(regexp).flatten.first
  end

  def trello_ticket_id
    url = ticket_url
    return if url.blank?
    regexp = /\/[a-zA-Z0-9]{8}\//
    id = url.scan(regexp).first
    id.gsub('/', '') if id.present?
  end

  private

  def save_labels
    self.trello_labels = trello_card_labels
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

end
