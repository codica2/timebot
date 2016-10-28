namespace :conversions do
  task convert_absent_time_entires: :environment do
    ActiveRecord::Base.transaction do
      TimeEntry.where(is_absent: true).each do |time_entry|
        Absence.create!(user_id: time_entry.user_id, reason: time_entry.reason, date: time_entry.date)
        time_entry.destroy
      end
    end
  end
end
