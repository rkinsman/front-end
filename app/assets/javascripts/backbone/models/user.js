var app = app || {};

(function() {
  'use strict';

  app.User = Backbone.Model.extend({
    defaults: {
      username: "",
      lessons:  ""
    },


    initialize: function() {
      this.set("lessons", new app.LessonList({"user_id": this.get("username")}));
      this.get('lessons').fetch();
    },

    url: function() {
      var base = 'users';
      if (this.isNew()) return base;
      return base + (base.charAt(base.length - 1) == '/' ? '' : '/') + this.id + '.json';
    }
  });
}());
