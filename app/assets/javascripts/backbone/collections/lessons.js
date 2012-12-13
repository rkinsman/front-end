var app = app || {};


(function() {
  'use strict';

  var LessonList = Backbone.Collection.extend({
    url: function() {
      return 'users/' + this.get('user_id') + '/lessons.json';
    },

    model: app.Lesson,

    initialize: function() {
      console.log(app.Lesson);
      console.log("lessons!");
    }
  });
  app.LessonList = LessonList;
}());
