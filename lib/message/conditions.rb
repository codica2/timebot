module Message::Conditions

  ENTER_TIME_FOR_DAY_REGEXP = / *update (\d?\d)\.(\d?\d).(\d?\d?\d\d) (.*) (\d?\d:[0-5]\d)(?: ((?:.|\n)*))?$/
  ENTER_TIME_REGEXP = / *(.*) (\d?\d:[0-5]\d)(?:((?:.|\n)*))?$$/
  ADD_PROJECT_REGEXP = /^ *add project (\w.*?) *$/

  private

  def message_is_request_for_project
    data.text.downcase == 'projects'
  end

  def message_is_request_for_help
    data.text.downcase == 'help'
  end

  def message_is_over
    data.text.downcase == 'finish' && user.is_speaking
  end

  def message_is_enter_time_for_day
    data.text =~ ENTER_TIME_FOR_DAY_REGEXP && !user.is_speaking
  end

  def message_is_add_project
    data.text =~ ADD_PROJECT_REGEXP
  end

  def message_is_show_week
    data.text =~ /^ *show week *$/
  end

  def message_is_show_month
    data.text =~ /^ *show month *$/
  end
end