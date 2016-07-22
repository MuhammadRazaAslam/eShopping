// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .




var a=1,b,flag=0,flag_click=0;
$(document).ready(function(){

// Header
$('#hi_sign_in').mouseenter(function(){
  $('#hi_sign_in_menu').slideDown();
});
  
$('#hi_sign_in_menu').mouseleave(function(){
  $('#hi_sign_in_menu').slideUp();
});

$('#hi_sign_in_menu_sub').mouseleave(function(){
  $('#hi_sign_in_menu').slideUp();
});
$('#my_shoppingHub').mouseenter(function(){
  $('#my_shoppingHub_menu').slideDown();

$('#my_shoppingHub_menu').mouseleave(function(){
    $('#my_shoppingHub_menu').slideUp();
});

$('ul#my_shoppingHub_menu li').mouseenter(function(){
  $(this).css({
               'color':'#337ab7',
               'cursor':'pointer'});
});

$('ul#my_shoppingHub_menu li').mouseleave(function(){
  $(this).css({
               'color':'black'});
});

});
    setInterval(slider_myfunction,1500);
function slider_myfunction(){
  if(flag_click==0)
  {

     if(a!=1)
     {
        $('#circle_'+(a-1)).attr('fill','white');
        $('#circle_'+a).attr('fill','black');
        $('#circle_'+(a+1)).attr('fill','white');
        flag=1;
     }
     else if(a==1&&flag==1)
     {
        $('#circle_'+a).attr('fill','black');
        $('#circle_'+(a+1)).attr('fill','white');
        $('#circle_5').attr('fill','white');
     }    
       $('#img_slider_latest').attr("src","images/slide_"+a+".jpg");
       var height=$('#img_slider_pic_height').height();
       $('#img_slider_latest').css('height',height+'px');
     if(a==5)
      a=1;
     else
      a++;    
  }
  else
     flag_click=0;
}

$('.left-arrow').click(function(){
debugger;
  flag_click=1;
  if(a==1)
    {
      a=4;     
    }
    else if(a==2)
    {
      a=5;
      $('#circle_1').attr('fill','white');
    }
    else
    {
      a=a-2;
    }
    $('#circle_'+(a-1)).attr('fill','white');
    $('#circle_'+a).attr('fill','black');
    $('#circle_'+(a+1)).attr('fill','white');
    $('#img_slider_latest').attr("src","images/slide_"+a+".jpg");
    var height=$('#img_slider_pic_height').height();
    $('#img_slider_latest').css('height',height+'px');
    if(a==5)
      a=1;
    else
    a++;
});
$('.right-arrow').click(function(){
 flag_click=1;  
  $('#circle_'+(a-1)).attr('fill','white');
  $('#circle_'+a).attr('fill','black');
  $('#img_slider_latest').attr("src","images/slide_"+a+".jpg");
  var height=$('#img_slider_pic_height').height();
  $('#img_slider_latest').css('height',height+'px');
  if(a==5)
  {
    a=1;
  }
  else{
   a++;
   $('#circle_5').attr('fill','white');
  }
});

$('#glyphicon-home-left-arrow').click(function(){
    var temp1=parseInt(curr1)-4;

    if(temp1>0)
    {
       for(var i=0;i<4;i++)
       {
           $('.home-living-slider-length-pic-'+(i+1)).attr('src','/images/h'+temp1+'.jpg');
           temp1++;
       }
       curr1--; 
    }
});
$('#glyphicon-home-right-arrow').click(function(){
var id=parseInt($('#prod_id_'+parseInt(curr1)).text());
  var lengthOfArray=$('.home-living-slider-length-pic-1').attr("alt");

 /* var valueOfCurr=$('#valueOfCurr').text();
 */ if(parseInt(curr1)<parseInt(lengthOfArray)-1){
    curr1++;
    
    var temp=curr1-3;

    for(var i=0;i<4;i++)
    {
      $('.home-living-slider-length-pic-'+(i+1)).attr('src','/images/h'+temp+'.jpg');
      temp++;
    }
  }
});



//electronics

$('#glyphicon-home-left-arrow-e').click(function(){
    var temp1=parseInt(ecurr1)-4;

    if(temp1>0)
    {
       for(var i=0;i<4;i++)
       {
           $('.home-living-slider-length-pic-'+(i+1)+'-e').attr('src','images/e'+temp1+'.jpg');
           temp1++;
       }
       ecurr1--; 
    }
});
$('#glyphicon-home-right-arrow-e').click(function(){

  var elengthOfArray=$('.home-living-slider-length-pic-1-e').attr("alt");
 /* var valueOfCurr=$('#valueOfCurr').text();
 */ if(parseInt(ecurr1)<parseInt(elengthOfArray)){
    ecurr1++;
    var temp=ecurr1-3;
    for(var i=0;i<4;i++)
    {
      $('.home-living-slider-length-pic-'+(i+1)+'-e').attr('src','images/e'+temp+'.jpg');
      temp++;
    }
  }
});

// Clothing
$('#glyphicon-home-left-arrow-c').click(function(){
    var temp1=parseInt(ccurr1)-4;

    if(temp1>0)
    {
       for(var i=0;i<4;i++)
       {
           $('.home-living-slider-length-pic-'+(i+1)+'-c').attr('src','Images/c'+temp1+'.jpg');
           temp1++;
       }
       ccurr1--; 
    }
});
$('#glyphicon-home-right-arrow-c').click(function(){

  var elengthOfArray=$('.home-living-slider-length-pic-1-c').attr("alt");
 /* var valueOfCurr=$('#valueOfCurr').text();
 */ if(parseInt(ccurr1)<parseInt(elengthOfArray)){
    ccurr1++;
    var temp=ccurr1-3;
    for(var i=0;i<4;i++)
    {
      $('.home-living-slider-length-pic-'+(i+1)+'-c').attr('src','Images/c'+temp+'.jpg');
      temp++;
    }
  }
});

 /*     Home and Living Page  */
// Kitchen and dining
$('.kitchen-and-dining-left-arrow').click(function(){ 

$('.pic44').hide('slide');
$('.pic44').hide();
$('.pic11').show('slow');
 
 });

$('.kitchen-and-dining-right-arrow').click(function(){

$('.pic11').hide('slide');
$('.pic44').show('slow');
});

 /*     Bathing  */

$('.bathing-left-arrow').click(function(){ 
$('.b4').hide('slide');
$('.b4').hide();
$('.b1').show('slow');
 
 });

$('.bathing-right-arrow').click(function(){

$('.b1').hide('slide');
$('.b4').show('slow');
});

 /*     Home decorators  */

$('.home-decorators-left-arrow').click(function(){ 
$('.hd4').hide('slide');
$('.hd4').hide();
$('.hd1').show('slow');
 
 });

$('.home-decorators-right-arrow').click(function(){
$('.hd1').hide('slide');
$('.hd4').show('slow');
});
/* Kitchen and Dining Page */
$('.kd-page-1').click(function(){
    var temp=ccurr1-3;
    for(var i=0;i<8;i++)
    {
      $('.home-living-slider-length-pic-'+(i+1)+'-c').attr('src','Images/c'+temp+'.jpg');
      temp++;
    }
});
// All Products/top star products btn
$('#all_products_btn').click(function(){
$('#all_products_btn').attr('class','btn btn-primary');
$('#top_star_products_btn').attr('class','btn btn-default');

/*$('.all_products_row').css('display','inherit');
$('.top_star_products_row').css('display','none');
*/
$('.all_products_row').fadeIn(1000);
$('.top_star_products_row').fadeOut();

});

$('#top_star_products_btn').click(function(){

$('#all_products_btn').attr('class','btn btn-default');
$('#top_star_products_btn').attr('class','btn btn-primary');
/*$('.all_products_row').css('display','none');
$('.top_star_products_row').css('display','inherit');
*/

$('.all_products_row').fadeOut(1000);
$('.top_star_products_row').fadeIn();
});
// Detail Page
$('#detail-page-pic-1').click(function(){
  $('#detail-page-pic-0').attr('src','Images/slide_1.jpg');
  $('#detail-page-pic-1').css('border','1px solid red');
  $('#detail-page-pic-2').css('border','1px solid grey');
  $('#detail-page-pic-3').css('border','1px solid grey');
  $('#detail-page-pic-4').css('border','1px solid grey');
});

$('#detail-page-pic-2').click(function(){
  $('#detail-page-pic-0').attr('src','Images/slide_2.jpg');
  $('#detail-page-pic-1').css('border','1px solid grey');
  $('#detail-page-pic-2').css('border','1px solid red');
  $('#detail-page-pic-3').css('border','1px solid grey');
  $('#detail-page-pic-4').css('border','1px solid grey');
});

$('#detail-page-pic-3').click(function(){
  $('#detail-page-pic-0').attr('src','Images/slide_3.jpg');
  $('#detail-page-pic-1').css('border','1px solid grey');
  $('#detail-page-pic-2').css('border','1px solid grey');
  $('#detail-page-pic-3').css('border','1px solid red');
  $('#detail-page-pic-4').css('border','1px solid grey');
});

$('#detail-page-pic-4').click(function(){
  $('#detail-page-pic-0').attr('src','Images/slide_4.jpg');
  $('#detail-page-pic-1').css('border','1px solid grey');
  $('#detail-page-pic-2').css('border','1px solid grey');
  $('#detail-page-pic-3').css('border','1px solid grey');
  $('#detail-page-pic-4').css('border','1px solid red');
});

$('#detail-page-pic-zoom-div').hide();

$('#detail-page-pic-0').mouseenter(function(){
$('#detail-page-pic-zoom-div').show();
});

$('#detail-page-pic-0').mouseleave(function(){

$('#detail-page-pic-zoom-div').hide();
});

 // Video stop after modal hidden
 
$('#mymodal').on('hidden.bs.modal', function () {
  $("video").attr("src","raza.mp4");
});
/*var native_width=0;
var native_height=0;
$('#detail-page-pic-0').mouseenter(function(e){

if(!native_width && !native_height){
  var image_object=new Image();
  image_object.src=$('#detail-page-pic-0').attr('src');
  native_width=image_object.width;
  native_height=image_object.height;
}
else{
  var magnify_offset=$(this).offset();
  var mx=e.pageX-magnify_offset.left;
   var my=e.pageY-magnify_offset.top;
   if(mx<$(this).width() && my<$(this).height() && mx>0 && my>0){
      $('#detail-page-pic-zoom-div').fadeIn();
   }
   else{
    $('#detail-page-pic-zoom-div').hide();
   }
   if($('#detail-page-pic-zoom-div').is(':visible')){
    var rx=Math.round(mx/$("#detail-page-pic-0").width()*native_width - $("#detail-page-pic-zoom-div").width()/2)*-1;
    var ry=Math.round(my/$("#detail-page-pic-0").height()*native_height - $("#detail-page-pic-zoom-div").height()/2)*-1;
   var bgp=rx+"px"+ry+"px";
   var px=mx-$("#detail-page-pic-zoom-div").width()/2;
   var py=my-$("#detail-page-pic-zoom-div").height()/2;
   $('#detail-page-pic-zoom-div').css({left:px, top:py, backgroundPosition:bgp});

   }
}
});
*/
// Detail page oother seller products slider
$('.detail-page-left-arrow').click(function(){ 

$('.pic444').hide('slide');
$('.pic444').hide();
$('.pic111').show('slow');
 
 });

$('.detail-page-right-arrow').click(function(){

$('.pic111').hide('slide');
$('.pic444').show('slow');
});

// SignIn ,SignUp Page
function signIn_clickFunction(){

  $('#registration-form').hide();
  $('#sign-in-form').show();
  $('#sign-in').css({"background-color":"white","border-bottom":"0px","border-right":"0px"});
  $('#sign-in-glyphicon-circle-arrow-right').css("color","lightgrey");
  $('#sign-in-span-text').css("color","grey");
  
  $('#registration').css({"background-color":"rgb(214,214,214)","border-bottom":"2px solid grey","border-left":"2px solid grey"});
  $('#registration-glyphicon-plus-sign').css("color","grey");
  $('#registration-span-text').css("color","black");
  
}
function registration_clickFunction(){
 
  $('#sign-in-form').hide();
  $('#registration-form').show();
  $('#registration').css({"background-color":"white","border-bottom":"0px","border-left":"0px"});
  $('#registration-glyphicon-plus-sign').css("color","lightgrey");
  $('#registration-span-text').css("color","grey");

  $('#sign-in').css({"background-color":"rgb(214,214,214)","border-bottom":"2px solid grey","border-right":"2px solid grey"});
  $('#sign-in-glyphicon-circle-arrow-right').css("color","grey");
  $('#sign-in-span-text').css("color","black");
}

$('#registration').click(
 registration_clickFunction);
$('#sign-in').click(
  signIn_clickFunction);

// Admin Users Page
$('#admins_information_btn').click(function(){
  $('#admins_information_btn').attr('class','btn btn-primary');
  $('#sellers_information_btn').attr('class','btn btn-default');
  $('#buyers_information_btn').attr('class','btn btn-default');
  $('#sellers_information_table').hide();
  $('#buyers_information_table').hide();
  $('#admin_create_btn').show();
  $('#admins_information_table').show();
});
$('#sellers_information_btn').click(function(){
  $('#admins_information_btn').attr('class','btn btn-default');
  $('#sellers_information_btn').attr('class','btn btn-primary');
  $('#buyers_information_btn').attr('class','btn btn-default');
  $('#admin_create_btn').hide();
  $('#admins_information_table').hide();
  $('#buyers_information_table').hide();
  $('#sellers_information_table').show();
});
$('#buyers_information_btn').click(function(){
  $('#admins_information_btn').attr('class','btn btn-default');
  $('#sellers_information_btn').attr('class','btn btn-default');
  $('#buyers_information_btn').attr('class','btn btn-primary');
    $('#admin_create_btn').hide();
    $('#admins_information_table').hide();
    $('#sellers_information_table').hide();
    $('#buyers_information_table').show();
});
// Admin Order/Sold Page
$('#order_pending_btn').click(function(){
    $('#order_pending_btn').attr('class','btn btn-primary');
    $('#order_completed_btn').attr('class','btn btn-default');
    $('#order_completed_table').hide();
    $('#order_pending_table').show();
});
$('#order_completed_btn').click(function(){
    $('#order_pending_btn').attr('class','btn btn-default');
    $('#order_completed_btn').attr('class','btn btn-primary');
    $('#order_pending_table').hide();
    $('#order_completed_table').show();
});
// Admin Messages Page
$('#seller_messages_btn').click(function(){
    $('#seller_messages_btn').attr('class','btn btn-primary');
    $('#buyer_messages_btn').attr('class','btn btn-default');
    $('#buyer_messages_table').hide();
    $('#seller_messages_table').show();
});
$('#buyer_messages_btn').click(function(){
    $('#seller_messages_btn').attr('class','btn btn-default');
    $('#buyer_messages_btn').attr('class','btn btn-primary');
    $('#seller_messages_table').hide();
    $('#buyer_messages_table').show();
});
});
