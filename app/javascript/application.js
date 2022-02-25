// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require jquery_ujs
//= require popper
//= require bootstrap
//= require nested_form_fields

// import "@hotwired/turbo-rails"
import { Turbo } from "@hotwired/turbo-rails";
Turbo.session.drive = false;

import "controllers";

$(document).ready(function () {
  $("#make_same").on("click", function () {
    if (this.checked) {
      $("#employee_addresses_attributes_1_first_line").val(
        $("#employee_addresses_attributes_0_first_line").val()
      );
      $("#employee_addresses_attributes_1_second_line").val(
        $("#employee_addresses_attributes_0_second_line").val()
      );
      $("#employee_addresses_attributes_1_landmark").val(
        $("#employee_addresses_attributes_0_landmark").val()
      );
      $("#employee_addresses_attributes_1_city").val(
        $("#employee_addresses_attributes_0_city").val()
      );
      $("#employee_addresses_attributes_1_district").val(
        $("#employee_addresses_attributes_0_district").val()
      );
      $("#employee_addresses_attributes_1_state").val(
        $("#employee_addresses_attributes_0_state").val()
      );
      $("#employee_addresses_attributes_1_postal_code").val(
        $("#employee_addresses_attributes_0_postal_code").val()
      );
    } else {
      $("#employee_addresses_attributes_1_first_line").val("");
      $("#employee_addresses_attributes_1_second_line").val("");
      $("#employee_addresses_attributes_1_landmark").val("");
      $("#employee_addresses_attributes_1_city").val("");
      $("#employee_addresses_attributes_1_district").val("");
      $("#employee_addresses_attributes_1_state").val("");
      $("#employee_addresses_attributes_1_postal_code").val("");
    }
  });
});

let number_of_fields = 0;

document.querySelector(".remove_nested_fields_link").addEventListener("click", function() {
  number_of_fields++;
  debugger
  if (number_of_fields == "<%= @employee.contacts.count - 1 %>") {
    document.querySelector(".remove_nested_fields_link").hide();
  }
});

//"<%= @employee.contacts.length -1 %>"
// fields_removed.nested_form_fields

// $('.multi-field-wrapper').each(function () { 
//   var $wrapper = $('.multi-fields', this);
//   // $(".add-field", $(this)).click(function (e) { 
//   //   $('.multi-field:first-child', $wrapper).clone(true).appendTo($wrapper).find('text_field').val('').focus();
//   // });
//   $('.multi-field .remove-field', $wrapper).click(function () {
//     if ($('.multi-field', $wrapper).length > 1)
//       $(this).parent('.multi-field').remove();
//   });
// });


// $(document).ready(function(){
//   if ($(".fields-row").length > 1) {
//       $(".remove_fields").show();
//     } else {
//       $(".remove_fields").hide();
//     }
// })

// $(document).ready(function (){  
//   $(".nested_form_field .remove_fields").hide();
//   // setInterval(function() {
//   $(".remove_fields").click(function(){
//     if ($(".nested_form_field .fields-row").prev('input[type=hidden]').length == 1) {
//       alert();
//       // $(".nested_form_field .remove_fields").find().hide();
//     }
//   });
//   // }, 5000);
// })

  // $(".add_nested_fields_link").on("click", function () {
  //   $(".remove_fields").show();
  // });


  // $(".remove_nested_fields_link").on("click", function () { debugger
  //   if ($(".fields-row").length > 1) {
  //     $(".remove_fields").show();
  //   } else {
  //     $(".remove_fields").hide();
  //   }
  // });


  // $(".remove_nested_fields_link").bind("click", function () {
  //   alert($(".fields-row").length);
  //   if ($(".fields-row").length == 1) {
  //     $(".remove_fields").hide();
  //   }
  // });


  // $(".remove_nested_fields_link").on("click", function () {
  //   alert($(".fields-row").length);
  //   if ($(".fields-row").length == 1) {
  //     $(".remove_fields").hide();
  //   } else {
  //     $(".remove_fields").show();
  //   }
  // });
