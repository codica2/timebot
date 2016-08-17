namespace :fix do

  task update_time_strings: :environment do
    TimeEntry.find_each do |entry|
      right_time = '%2d:%02d' % entry.minutes.divmod(60)
      entry.update(time: right_time)
    end
  end
end
