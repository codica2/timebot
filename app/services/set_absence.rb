class SetAbsence < BaseService
  attr_reader :user, :text

  def initialize(user, text)
    @user = user
    @text = text
    super()
  end

  def call
    match_data = text.match Message::Conditions::SET_ABSENCE_REGEXP
    reason     = match_data[1].downcase
    start_date = parse_date(match_data[2])
    end_date   = parse_date(match_data[3])
    comment    = match_data[4]

    if Absence.reasons.keys.include?(reason) && start_date <= end_date
      (start_date..end_date).each { |date| user.add_absence(reason, date, comment) unless day_off_holiday(date) }
      text = "Set #{reason} from #{start_date.strftime('%b %e, %Y')} to #{end_date.strftime('%b %e, %Y')}."
      sender.send_message(user, text)
    else
      sender.send_message(user, 'Invalid reason or invalid dates.')
    end
  end

  private

  def day_off_holiday(date)
    date.saturday? || date.sunday? || Holiday.is_holiday?(date)
  end
end
