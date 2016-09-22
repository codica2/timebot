# frozen_string_literal: true
namespace :fix do
  task update_time_strings: :environment do
    TimeEntry.find_each do |entry|
      right_time = format('%2d:%02d', entry.minutes / 60, entry.minutes % 60)
      entry.update(time: right_time)
    end
  end
end
