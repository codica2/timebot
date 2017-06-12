$(document).ready(function () {
  $('.report__project-name').click(function () {
    $('tbody[data-project-id="' + $(this).data('id') + '"]').toggle();
  });
});
