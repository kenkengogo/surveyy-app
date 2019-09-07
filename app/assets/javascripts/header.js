
// $(function(){
//   $('#menu li')
//     .mouseover(function() {
//     $('ul', this).stop().slideDown('normal');
//     })
//     .mouseout(function() {
//       $('ul', this).stop().slideUp('normal');
//       });
// });

$(function(){
  $('#category').hide(),
  $('#menu').on({'mouseenter': function() {
    $('#category').stop().slideDown('normal');
    },
    'mouseleave' : function() {
      $('#category').stop().slideUp('normal');
    }
  })
})



// $(function(){
//   $('#menu')
//     .mouseover(function() {
//       $('#category').next().slideToggle();
//     });
// });
