$(document).ready(function(){

$('.get_exercise').on('click', function(e) {
  e.preventDefault();
  $.ajax({
    type: 'get',
    url: '/exercise',
  }).done(function(serverResponse){
      var appendThis = "<div class='exercise_from_db'>" + serverResponse.title + "<br>" +serverResponse.description + "</div>"
      $('.exercise_details').html(appendThis);
    });
  });
});





