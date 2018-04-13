ActiveAdmin.register_page 'Absence Report' do

  breadcrumb do
    ['Admin', 'Absence Report']
  end

  action_item :prev_year do
    report_year = params[:report_year] || Time.current.year
    report_year = report_year.to_i - 1
    link_to "#{report_year} Year", admin_absence_report_path(report_year: report_year)
  end

  action_item :next_year do
    report_year = params[:report_year] || Time.current.year
    report_year = report_year.to_i + 1
    link_to "#{report_year} Year", admin_absence_report_path(report_year: report_year)
  end

  content do
    report_year = params[:report_year] || Time.current.year
    absences = Absence.where('extract(year from date) = ?', report_year)
    absences = absences.group_by { |ab| ab.user.name }.sort_by { |user, absence| user }
    h3 "Report Year #{report_year}"
    table(class: 'index_table') do
      thead do
        tr do
          th do
            'Person'
          end
          th do
            'Vacation'
          end
          th do
            'Illness'
          end
          th do
            'Other'
          end
        end
      end
      tbody do
        absences.each do |name, absence|
          tr do
            td do
              name
            end
            td do
              absence.select(&:vacation?).count
            end
            td do
              absence.select(&:illness?).count
            end
            td do
              absence.select(&:other?).count
            end
          end
        end
      end
    end
  end

end