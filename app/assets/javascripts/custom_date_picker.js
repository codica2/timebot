$(document).ready(function () {
  window.getUrlParameter = function (name) {
    var searchResult = location.search.split(/\?|&/).filter(function (pair) {
      return pair.match(name)
    })[0];
    return searchResult ? searchResult.split('=')[1] : false;
  };

  if (window.location.pathname != '/admin/time_entries') return;

  var html = '<div class="date_range input optional stringish filter_form_field filter_date_range" id="q_date_input">';
  html += '<label class="label">Date</label>';
  html += '<input size="12" class="first-datepicker" maxlength="10" value="" type="text" name="q[date_gteq_date]" id="q_date_gteq_date">';
  html += '<span class="seperator">-</span>';
  html += '<input size="12" class="last-datepicker" maxlength="10" value="" type="text" name="q[date_lteq_date]" id="q_date_lteq_date"></div>';

  $('.buttons').before(html);

  if (getUrlParameter('date_gteq_date')) {
    $('#q_date_gteq_date').val(getUrlParameter('date_gteq_date'));
  }

  if (getUrlParameter('date_lteq_date')) {
    $('#q_date_lteq_date').val(getUrlParameter('date_lteq_date'));
  }

  $('.date_range').dateRangePicker({
    separator: ' to ',
    showShortcuts: true,
    shortcuts: [],
    language: 'en',
    customShortcuts: [
      {
        name: 'Today',
        dates: function () {
          var today = moment().toDate();
          return [today, today];
        }
      },
      {
        name: 'Yesterday',
        dates: function () {
          var yesterday = moment().subtract(1, 'days').toDate();
          return [yesterday, yesterday];
        }
      },
      {
        name: 'Current Week',
        dates: function () {
          var start = moment().startOf('week').toDate();
          var end = moment().endOf('week').toDate();
          return [start, end];
        }
      },
      {
        name: 'Last Week',
        dates: function () {
          var start = moment().subtract(7, 'days').startOf('week').toDate();
          var end = moment().subtract(7, 'days').endOf('week').toDate();
          return [start, end];
        }
      },
      {
        name: 'Current Month',
        dates: function () {
          if (moment().date() >= 16)
            return [moment().date(16).toDate(), moment().month(moment().month() + 1).date(15).toDate()];
          else
            return [moment().month(moment().month() - 1).date(16).toDate(), moment().date(15).toDate()];
        }
      },
      {
        name: 'Last Month',
        dates: function () {
          if (moment().date() >= 16)
            return [moment().month(moment().month() - 1).date(16).toDate(), moment().date(15).toDate()];
          else
            return [moment().month(moment().month() - 2).date(16).toDate(),
                    moment().month(moment().month() - 1).date(15).toDate()];
        }
      }
    ],
    getValue: function () {
      if ($('.first-datepicker').val() && $('.last-datepicker').val())
        return $('.first-datepicker').val() + ' to ' + $('.last-datepicker').val();
      else
        return '';
    },
    setValue: function (s, s1, s2) {
      $('.first-datepicker').val(s1);
      $('.last-datepicker').val(s2);
    }
  });
});