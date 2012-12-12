var app = app || {};

$(function() {
  'use strict';

  app.UserIndexView = Backbone.View.extend({

    tagName: 'ul',

    template: _.template(JST['backbone/templates/users/index']()),

    events: {

    },

    initialize: function() {
      console.log("Im listin dem users");
    },

    render: function() {

    }

  });
});



