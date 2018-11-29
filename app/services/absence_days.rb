# frozen_string_literal: true

class AbsenceDays < BaseService
  include ServiceHelper

  attr_reader :user, :text

  def initialize(user, text)
    @user = user
    @text = text
    super()
  end

  def call
    dates = set_dates

    list = (dates[0]..dates[1]).to_a.map do |day|
      absence = user.absences.find_by(date: day)
      absence.present? ? [day, "#{"*#{absence.id}: #{absence.reason} #{absence.comment}*"}"] : []
    end.reject(&:empty?)

    strings = list.map do |day, entry|
      "`#{day.strftime('%d.%m.%y`')}: #{entry}"
    end

    absences = user.absences.where(date: [dates[0]..dates[1]])
    vacation_days_total = (dates[1].year * 12 + dates[1].month - (dates[0].year * 12 + dates[0].month)) * 15 / 12
    illness_days_total = 5

    s = "```Period: #{dates[0].strftime('%b %d, %Y')} - #{dates[1].strftime('%b %d, %Y')}\n"
    s += "Vacation days taken: #{absences.vacation.count} of #{vacation_days_total}\n"
    s += "Illness days taken: #{absences.illness.count} of #{illness_days_total}\n```\n"
    s += "_Notice: you had joined the team only on #{user.created_at.strftime('%b %d, %Y')}_" if user.created_at > dates[1]
    strings << s
    sender.send_message(user, strings.join("\n"))
  end

  def set_dates
    last_year = text.downcase[/last year/] || text[/ly/]
    this_year = Time.zone.today.year
    hire_date = user.created_at.to_date
    anniversary = Date.new(this_year, hire_date.month, hire_date.day)
    less_ann_date = Date.new(this_year - 1, hire_date.month, hire_date.day)

    if last_year.nil?
      Time.zone.today < anniversary ? [less_ann_date, Time.zone.today] : [anniversary, Time.zone.today]
    else
      Time.zone.today < anniversary ? [Date.new(this_year - 2, hire_date.month, hire_date.day), less_ann_date] : [less_ann_date, Date.new(this_year, hire_date.month, hire_date.day)]
    end
  end
end
