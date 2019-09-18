
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

