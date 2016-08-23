module ActiveAdmin::ViewsHelper

 def projects_info(user_id, scope, start_time, end_time)
   user = User.find(user_id)
   project_ids = user.time_entries.map(&:project_id).uniq.select(&:present?)
   arr = []
   total = 0
   project_ids.each do |project_id|
     params_checking = TimeEntry.where(user_id: user.id, project_id: project_id)
     params_checking = if scope && !start_time && !end_time
                         params_checking.send(scope)
                       elsif !scope && start_time && end_time
                         params_checking.where(date: (start_time..end_time))
                       elsif scope && start_time && end_time
                         params_checking.send(scope).where(date: (start_time..end_time))
                       else
                         params_checking
                       end
     if params_checking.present?
       hours_at_project = params_checking.map(&:minutes).inject(:+)/60
       arr << "#{Project.find(project_id).name} - #{hours_at_project} h"
       total += hours_at_project
     end
   end
   arr << "Total time - #{total} h"
   arr
 end

end