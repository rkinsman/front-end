var app = app || {};

(function() {
  'use strict';

  app.Question = Backbone.Model.extend({
    defaults: {
      qText: "",
      correctAnswer: "",
      aText: "",
      learnerAnswer: "",
      lessonURL: ""
    },

    initialize: function() {
      console.log("im in question");
    }
  });
});
