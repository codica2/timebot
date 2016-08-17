namespace :fix do

  task entries_time: :environment do
    TimeEntry.all.each do |entry|
      right_time = '%2d:%02d' % entry.minutes.divmod(60)
      entry.update_attribute(:time, right_time)
    end
  end

end
