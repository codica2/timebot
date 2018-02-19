# frozen_string_literal: true
module Message
  module Conditions
    ENTER_TIME_FOR_DAY_REGEXP = /^\s*(?:update\s+?)?(\d?\d\.\d?\d(?:\.(?:\d\d)?\d\d)?)\s+([^:]+?)\s+?(\d?\d:[0-5]\d)\s+?([^\s](?:.|\s)*[^\s])\s*$/
    ENTER_TIME_REGEXP = /^(?!update\s)(?!edit\s)(?!add\s)(?!set)([^\.]+?)\s+?(\d?\d:[0-5]\d)\s+?([^\s](?:.|\s)*[^\s])\s*$/
    ADD_PROJECT_REGEXP = /^ *add project (\w.*?) *$/
    SET_ABSENCE_REGEXP = /^ *set (.{3,}) (\d?\d\.\d?\d(?:\.(?:\d\d)?\d\d)?) - (\d?\d\.\d?\d(?:\.(?:\d\d)?\d\d)?) ?([^\s](?:.|\s)*[^\s])? *$/
    MESSAGE_IN_REPORT = /^ *show (week|last week|month|last month)(?: (.*?))? *$/
    REMOVE_ENTRY_REGEXP = /^ *remove entry (\d+|last) *$/
    EDIT_ENTRY_REGEXP = /^ *edit (\d+) ([^:]+?) (\d?\d:[0-5]\d) ([^\s](?:.|\s)*[^\s]) *$/
    FIND_PROJECT_REGEXP = /^ *find project (\w.*?) *$/
    WORKED_HOURS = /^\s*(\d{1,2}\.\d{1,2}\.?(?:\d{4}|\d{2})?)\s*?-\s*?(\d{1,2}\.\d{1,2}\.?(?:\d{4}|\d{2})?)\s*?$/
    WORKED_HOURS_MONTH = /^ *show work month *$/
    WORKED_HOURS_PREV_MONTH = /^ *show work last month *$/

    def message_is_request_for_project
      data.text.casecmp('projects').zero?
    end

    def message_is_request_for_help
      data.text.casecmp('help').zero?
    end

    def message_is_over(user)
      data.text.downcase =~ /^ *no *$/ && user.is_speaking
    end

    def message_is_enter_time_for_day
      data.text =~ ENTER_TIME_FOR_DAY_REGEXP
    end

    def message_is_add_project
      data.text =~ ADD_PROJECT_REGEXP
    end

    def message_is_show_reports
      data.text.downcase =~ MESSAGE_IN_REPORT
    end

    def message_from_public_channel
      public_channels.include? data.channel
    end

    def message_is_not_processable
      data.bot_id || data.message || data.previous_message || message_from_public_channel
    end

    def message_is_set_absence
      data.text =~ SET_ABSENCE_REGEXP
    end

    def message_is_remove_entry
      data.text.downcase =~ REMOVE_ENTRY_REGEXP
    end

    def message_is_enter_time
      data.text.downcase =~ ENTER_TIME_REGEXP
    end

    def message_is_edit_entry
      data.text.downcase =~ EDIT_ENTRY_REGEXP
    end

    def message_is_find_project
      data.text =~ FIND_PROJECT_REGEXP
    end

    def message_is_worked_hours
      data.text =~ WORKED_HOURS || data.text =~ WORKED_HOURS_MONTH || data.text =~ WORKED_HOURS_PREV_MONTH
    end
  end
end
