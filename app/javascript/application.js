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
      $("#employee_local_attributes_first_line").val(
        $("#employee_permanent_attributes_first_line").val()
      );
      $("#employee_local_attributes_second_line").val(
        $("#employee_permanent_attributes_second_line").val()
      );
      $("#employee_local_attributes_landmark").val(
        $("#employee_permanent_attributes_landmark").val()
      );
      $("#employee_local_attributes_city").val(
        $("#employee_permanent_attributes_city").val()
      );
      $("#employee_local_attributes_district").val(
        $("#employee_permanent_attributes_district").val()
      );
      $("#employee_local_attributes_state").val(
        $("#employee_permanent_attributes_state").val()
      );
      $("#employee_local_attributes_postal_code").val(
        $("#employee_permanent_attributes_postal_code").val()
      );
    } else {
      $("#employee_local_attributes_first_line").val("");
      $("#employee_local_attributes_second_line").val("");
      $("#employee_local_attributes_landmark").val("");
      $("#employee_local_attributes_city").val("");
      $("#employee_local_attributes_district").val("");
      $("#employee_local_attributes_state").val("");
      $("#employee_local_attributes_postal_code").val("");
    }
  });
});

// $(document).ready(function(){
//   if ($(".fields-row").length > 1) {
//       $(".remove_fields").show();
//     } else {
//       $(".remove_fields").hide();
//     }
// })

$(document).ready(function () {
  if ($(".fields-row").length == 1) {
    $(".remove_fields").hide();
  }

  $(".add_nested_fields_link").on("click", function () {
    $(".remove_fields").show();
  });

  // $(".remove_nested_fields_link").bind("click", function () {
  //   alert($(".fields-row").length);
  //   if ($(".fields-row").length == 1) {
  //     $(".remove_fields").hide();
  //   }
  // });

  // $(".nested_form_field").on("fields_added.nested_form_fields", function () {
  //   if ($(".fields-row").length > 1) {
  //     $(".remove_fields").show();
  //   } else {
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
});
