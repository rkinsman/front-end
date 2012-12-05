var app = app || {};

(function() {
  'use strict';

  app.Question = Backbone.Model.extend({
    defaults: {
      qText: "",
      correctAnswer: "",
      aText: "",
      learnerAnswer: ""
    },

    initialize: function() {
      console.log("im in question");
    }
  });
});
