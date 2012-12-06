var app = app || {};

$(function($) {
  'use strict';

  app.AppView = Backbone.View.extend({
    el: '.container-fluid',

    events: {

    },

    initialize: function() {
      console.log("In app!");
      //Lessons.fetch()
    },

    render: function() {
      return this;
    }

  });
});
