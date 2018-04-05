class AbsenceDays < BaseService
  include ServiceHelper

  attr_reader :user, :text

  def initialize(user, text)
    @user = user
    @text = text
    super()
  end

  def call
    last_year = text.downcase[/last year/]
    this_year = Time.zone.today.year
    hire_date = user.created_at.to_date
    default_year = Date.new(this_year, 1, 1)

    if last_year.nil?
      dates = hire_date < default_year ? [default_year, Date.new(this_year, 12, 31)] : [hire_date, Date.new(this_year, 12, 31)]
    else
      dates = hire_date < default_year - 1.year ? [default_year - 1.year, Date.new(this_year - 1, 12, 31) ] : [hire_date, Date.new(this_year - 1, 12, 31)]
    end

    list = (dates[0]..dates[1]).to_a.map do |day|
      absence = user.absences.find_by(date: day)
      absence.present? ? [day, "#{"*#{absence.id}: #{absence.reason} #{absence.comment}*"}" ] : []
    end.reject { |day| day.empty? }

    strings = list.map do |day, entry|
      "`#{day.strftime('%d.%m.%y`')}: #{entry}"
    end

    absences = user.absences.where(date: [dates[0]..dates[1]])
    vacation_days_total = (Time.zone.today.month - dates[0].month) * 15 / 12
    illness_days_total = 5 #(dates[1].month - dates[0].month) * 5 / 12

    s = "```Vacation days taken: #{absences.vacation.count} of #{vacation_days_total}\n"
    s+= "Illness days taken: #{absences.illness.count} of #{illness_days_total}\n```"
    strings << s
    sender.send_message(user, strings.join("\n"))
  end
end
