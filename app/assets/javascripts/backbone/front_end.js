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

//      http://ianstormtaylor.com/rendering-views-in-backbonejs-isnt-always-simple/
var assign = function (view, selector) {
 view.setElement(this.$(selector)).render();
};
