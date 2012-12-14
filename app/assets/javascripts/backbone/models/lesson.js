var app = app || {};

(function() {
  'use strict';

  app.Lesson = Backbone.Model.extend({
    defaults: {
      title: "",
      complete: false,
      questions: []
    },

    initialize: function() {
      console.log("Initializing Lesson!");
    }
  });
}());
