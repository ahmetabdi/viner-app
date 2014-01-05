$(function() {
  $("video").bind("ended", function() {
    location.reload();
  });

  $(".form-control").keypress(function(event) {
    if (event.which == 13) {
      $(location).attr('href', $(this).val());
    }
  });

});