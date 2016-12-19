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
//= require jquery-ui/datepicker
//= require jquery-ui/datepicker-es
//= require foundation
//= require turbolinks
//= require initial
//= require app
//= require dropdown
//= require prevent_double_submission
//= require forms
//= require date_picker
// #require process_summary

var initialize_modules = function() {
  App.Dropdown.initialize();
  App.PreventDoubleSubmission.initialize();
  App.Forms.initialize();
  App.Date_Picker.initialize();
};

$(function(){
  Turbolinks.enableProgressBar();

  $(document).ready(initialize_modules);
  $(document).on('page:load', initialize_modules);
  $(document).on('ajax:complete', initialize_modules);
});
