$(function(){
  $('.data__vote').each(function(i){
      $(this).attr('id','vote' + (i+1));
  })
  $('.data__fukidashi').each(function(i){
    $(this).attr('id','fukidashi' + (i+1));
  })
  $('.data__fukidashi').each(function (i) {
    i = i+1;
    $('#fukidashi'+i).hide()
  })


  if ($('.data__fukidashi').each(function (i) {
    i = i+1;
    $('#fukidashi'+i).is(':hidden')
    })){
    $('.data__vote').each(function(i){
    $('#vote'+i).click (function() {
   $('#fukidashi'+i).show()
  })
})
}




// else{
//   $('.data__vote').each(function(i){
//     $('#vote'+i).click (function() {
//    $('#fukidashi'+i).hide()
//   })
// })
// }










})


  // $('data-vote').each(function(i){
  //   $('#vote'+i)
  //   .on({'click': function(i) {
  //   $('#fukidashi'+i).show();
  //   }
  // })
  // }



  // if (('#fukidashi').style.display="block"){
  //   $('#vote')
  //   .on({'click': function() {
  //   $('#fukidashi').show();
  //   }
  // }
    // else{
    //   $('#vote')
    //   .on({'click': function() {
    //   $('#fukidashi').hide();
    // }