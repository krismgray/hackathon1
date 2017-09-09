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
//= require semantic-ui
//= require_tree .


function showComments(post){
  $("#post_comments_"+post).show()
  $("#comment_button_"+post).remove()
  $("#button_container_"+post).append("<button id='hide_comment_button_"+post+"' class='ui primary basic button' onClick='hideComments("+post+")'>Hide Comments</button>")
}

function hideComments(post){
  $("#post_comments_"+post).hide()
  $("#hide_comment_button_"+post).remove()
  $("#button_container_"+post).append("<button id='comment_button_"+post+"' class='ui primary basic button' onClick='showComments("+post+")'>Show Comments</button>")
}
