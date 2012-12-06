var app = app || {};


(function() {
  'use strict';

  var LessonList = Backbone.Collection.extend({
    url: '/lessons',
    model: app.Lesson

  });
  app.Lessons = new LessonList();
}());
