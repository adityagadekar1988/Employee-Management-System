// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require jquery_ujs
//= require popper
//= require bootstrap
//= require nested_form_fields

import "@hotwired/turbo-rails"
import "controllers"


$(document).ready(function () {
  $('.nested_form_field').on("fields_added.nested_form_fields", function () { 
    if ($(".fields-row").length > 1) {
      $(".remove_fields").show();
    } else {
      $(".remove_fields").hide();
    }
  });
  
  $('.nested_form_field').on("fields_removed.nested_form_fields", function () {
    //alert($(".fields-row").length);
    if ($(".fields-row").length == 1) {
      $(".remove_fields").hide();
    } else {
      $(".remove_fields").show();
    }
  });
});