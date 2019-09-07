$(function(){
  $('.data__vote').each(function(i){
      $(this).attr('id','vote' + (i+1));
  })
  $('.data__fukidashi').each(function(i){
    $(this).attr('id','fukidashi' + (i+1));
  })
  $('.data__fukidashi').each(function (i) {
    i = i+1;
    $("#vote"+i).click (function() {
   $("#fukidashi"+i).toggle()
})
})
})
