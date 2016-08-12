module ActiveAdmin::ViewsHelper

  def week_params(date_begin, date_end)
    "time_entries?utf8=✓&q[date_gteq_date]=#{date_begin}" +
          "&q[date_lteq_date]=#{date_end}"
  end

  def total_time
    "Total time: #{User.find(params[:q][:user_id_eq].to_i).time_entries.map(&:minutes).inject(:+)/60} h"
  end

  def total_time_by_date
    "Total time by date: #{User.find(params[:q][:user_id_eq].to_i).time_entries
                               .where(date: (params[:q][:date_gteq_date]..params[:q][:date_lteq_date]))
                               .map(&:minutes).inject(:+)/60} h"
  end
end