// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//=require jquery
//=require jquery_ujs
//= require popper
//= require bootstrap
import "@hotwired/turbo-rails"
import "controllers"

$(document).ready(function () {
  $('#add_address').click(function(evt) {
    $('div#new_address').append(('#address_form').html() +    
    '<div><button class="removeAddress", type="button">remove</button></div>');
  });
  
  $('#new_address').on('click', '.removeAddress', function(evt) {
    $(this).closest('#address_form').remove();
    console.log("hello");
  });
});
