// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require bootstrap-sprockets
//= require unobtrusive_flash
//= require unobtrusive_flash_bootstrap

$(document).ready(function() {
  $('.filter-button').click (function() {
    var filter = $(this).prop('id');
    $('.hide-locations').hide();
    $("." + filter).show();
  });

  var hide_alert = function() {
    $('.flash').fadeOut(1000);
  };

  $('.favorite').click (function (){
    setTimeout(function() { hide_alert(); }, 5000);
  });

  UnobtrusiveFlash.flashOptions['timeout'] = 6000;
});
