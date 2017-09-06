$(document).ready(function () {
  $('.report_by_user__project-name').click(function () {
    $('tbody[data-by-user-project-id="' + $(this).data('id') + '"]').toggle();
  });
});

$(document).ready(function () {
  $('.report_by_ticket__project-name').click(function () {
    $('tbody[data-by-ticket-project-id="' + $(this).data('id') + '"]').toggle();
  });
});
