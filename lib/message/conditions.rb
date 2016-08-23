module Message::Conditions

  ENTER_TIME_FOR_DAY_REGEXP = / *update (\d?\d)\.(\d?\d).(\d?\d?\d\d) (.*) (\d?\d:[0-5]\d)(?: ((?:.|\n)*))?$/
  ENTER_TIME_REGEXP = / *(.*) (\d?\d:[0-5]\d)(?:((?:.|\n)*))?$$/
  ADD_PROJECT_REGEXP = /^ *add project (\w.*?) *$/
  SET_ABSENCE_REGEXP = /^ *set (.{3,}) (\d?\d)\.(\d?\d)\.(\d?\d?\d\d) - (\d?\d)\.(\d?\d)\.(\d?\d?\d\d) *$/

  private

  def message_is_request_for_project
    data.text.downcase == 'projects'
  end

  def message_is_request_for_help
    data.text.downcase == 'help'
  end

  def message_is_over
    data.text.downcase =~ /^ *no *$/ && user.is_speaking
  end

  def message_is_enter_time_for_day
    data.text =~ ENTER_TIME_FOR_DAY_REGEXP
  end

  def message_is_add_project
    data.text =~ ADD_PROJECT_REGEXP
  end

  def message_is_show_week
    data.text =~ /^ *show week *$/
  end

  def message_is_show_last_week
    data.text =~ /^ *show last week *$/
  end

  def message_is_show_month
    data.text =~ /^ *show month *$/
  end

  def message_is_show_last_month
    data.text =~ /^ *show last month *$/
  end

  def message_from_public_channel
    @public_channels.include? data.channel
  end

  def message_is_not_processable
    data.bot_id || data.message || data.previous_message || message_from_public_channel
  end

  def message_is_set_absence
    data.text =~ SET_ABSENCE_REGEXP
  end
end