// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require jquery_ujs
//= require popper
//= require bootstrap
//= require nested_form_fields
import "@hotwired/turbo-rails"
import "controllers"


$(document).ready(function () {
  $('.form')
    .on("fields_added", function () {console.log ("Hello");
      if ($(".fields-row").length > 1) {
        $(".remove_fields")[0].style.display = "block";
      } else {
        $(".remove_fields")[0].style.display = "none";
      }
    })
  $('.form')  
    .on("fields_removed", function () {
      if ($(".fields-row").length == 1) {
        $(".remove_fields")[0].style.display = "none";
      } else {
        $(".remove_fields")[0].style.display = "block";
      }
    });
});
