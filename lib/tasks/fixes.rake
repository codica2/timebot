# frozen_string_literal: true
require Rails.root.join('app', 'services', 'service_helper').to_s

include ServiceHelper

namespace :fix do
  task update_time_strings: :environment do
    TimeEntry.find_each do |entry|
      right_time = format_time(entry.minutes)
      entry.update(time: right_time)
    end
  end

  task aliases: :environment do
    Project.all.each do |project|
      next if project.alias.present?

      project.update(alias: project.name.downcase.tr(' ', '-'))
    end
  end
end
