//= require_tree ./models
//= require_tree ./collections
//= require_tree ./templates
//= require_tree ./views
//= require_tree .

var app = app || {};
var ENTER_KEY = 13;

$(function() {
  new app.AppView();
});
