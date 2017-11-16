// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function Comment(data) {
  this.id = data.id;
  this.content = data.content;
  this.user = data.user;
}



Comment.prototype.renderDisplay = function() {
  var html = "" ;
  html += "<div class=\'well well-white\' id=\'comment-\' + comment.id + '\'>" +  "<strong>" + this.user.email + "</strong>" + " says: " + this.content + "</div>";
  $("#submitted-comments").append(html);
}

$(function() {
  $("form#new_comment").on("submit-comment", function(event) {
    event.preventDefault();
    var $form = $(this);
    var action = $form.attr("action");
    // in order to process the comment(form data), its need to be converted from an object to a string.
    var params = $form.serialize();
    $.ajax({
      url: action,
      data: params,
      dataType: "json",
      method: "POST"
    })
    .success(function(json) {
      $(".commentBox").val("");
      var comment = new Comment(json);
      comment.renderDisplay();

    })
  })
})
