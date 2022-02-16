// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require jquery_ujs
//= require popper
//= require bootstrap
//= require nested_form_fields

import "@hotwired/turbo-rails"
import "controllers"


$(document).ready(function(){
  $("#make_same").on("click", function(){
    if (this.checked) { 
      $("#employee_local_attributes_first_line").val($("#employee_permanent_attributes_first_line").val());
      $("#employee_local_attributes_second_line").val($("#employee_permanent_attributes_second_line").val());
      $("#employee_local_attributes_landmark").val($("#employee_permanent_attributes_landmark").val());
      $("#employee_local_attributes_city").val($("#employee_permanent_attributes_city").val());
      $("#employee_local_attributes_district").val($("#employee_permanent_attributes_district").val());
      $("#employee_local_attributes_state").val($("#employee_permanent_attributes_state").val());
      $("#employee_local_attributes_postal_code").val($("#employee_permanent_attributes_postal_code").val());                         
    }
    else {
      $("#employee_local_attributes_first_line").val('');
      $("#employee_local_attributes_second_line").val('');
      $("#employee_local_attributes_landmark").val('');
      $("#employee_local_attributes_city").val('');
      $("#employee_local_attributes_district").val('');
      $("#employee_local_attributes_state").val('');
      $("#employee_local_attributes_postal_code").val('');     
    }
  });
});
  


// $(document).ready(function () {
//   $('.nested_form_field').on("fields_added.nested_form_fields", function () { 
//     if ($(".fields-row").length > 1) {
//       $(".remove_fields").show();
//     } else {
//       $(".remove_fields").hide();
//     }
//   });
  
//   $('.nested_form_field').on("fields_removed.nested_form_fields", function () {
//     //alert($(".fields-row").length);
//     if ($(".fields-row").length == 1) {
//       $(".remove_fields").hide();
//     } else {
//       $(".remove_fields").show();
//     }
//   });
// });