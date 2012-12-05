var app = app || {};

$(function($) {
  'use strict';

  app.AppView = Backbone.View.extend({
    el: '.container-fluid',

    events: {

    },

    initialize: function() {
      console.log("In app!");
    },

    render: function() {
      return this;
    }

  });
});
