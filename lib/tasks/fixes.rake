# frozen_string_literal: true
include ServiceHelper

namespace :fix do
  task update_time_strings: :environment do
    TimeEntry.find_each do |entry|
      right_time = format_time(entry.minutes)
      entry.update(time: right_time)
    end
  end
end
