var app = app || {};


(function() {
  'use strict';

  var LessonList = Backbone.Collection.extend({
    url: function() {
      return 'users/' + this.user_id + '/lessons.json';
    },

    model: app.Lesson,

    initialize: function(obj) {
      this.user_id = obj.user_id;
      console.log("lessons!");
    }
  });
  app.LessonList = LessonList;
}());
