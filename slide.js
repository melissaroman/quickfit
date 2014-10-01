// HTML for map:
// <div id="map"></div>
//   <script src="/js/google-map.js"></script>

//   <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>



// SLIDER DIV PROFILE:
// <div id="slider">
//   <a href="#" class="control_next"></a>
//   <a href="#" class="control_prev"></a>
//    <ul>
//     <li>SLIDE 1 Why isn't this working?</li>
//     <li>SLIDE 2</li>
//     <li>SLIDE 3</li>
//     <li>SLIDE 4</li>
//   </ul>
// </div>

// MAP PROFILE:
// <iframe width="450" height="300" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/view?zoom=11&center=37.7749%2C-122.4194&key=AIzaSyD_ZfS4RP-0v3vEn5ucAa8s-aDprlh3kyY"></iframe>

// SLIDER JS:
// $(document).ready(function() {

//   $( "li" ).append( "TEST" );
//   var slideCount = $('#slider ul li').length;
//   var slideWidth = $('#slider ul li').width();
//   var slideHeight = $('#slider ul li').height();
//   var sliderUlWidth = slideCount * slideWidth;

//   $('#slider').css({ width: slideWidth, height: slideHeight});
//   $('#slider ul').css({ width: sliderUlWidth, marginLeft: -slideWidth / 2 });
//   $('#slider ul li:last-child').prependTo('#slider ul');

//   function moveLeft() {
//     $('#slider ul').animate({
//       left: + slideWidth
//     }, 600, function() {
//       $('#slider ul li:last-child').prependTo('#slider ul');
//       $('#slider ul').css('left', '');
//     });
//   };

//   function moveRight() {
//     $('#slider ul').animate({
//       left: -slideWidth
//     }, 600, function() {
//       $('#slider ul li:first-child').appendTo('#slider ul');
//       $('#slider ul').css('left', '');
//     });
//   };

//   $('a.control_prev').click(function() {
//     moveLeft();
//   });
//   $('a.control_next').click(function() {
//     moveRight();
//   });
// });



