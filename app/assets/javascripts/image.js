$(function(){
  $({deg:0}).animate({deg:360},{
    duration:3000,

    progress:function() {
      $('.top__image img').css({
        opacity: 1,
        transform:'rotate(' + this.deg + 'deg)'
      });
    }
  })
})
