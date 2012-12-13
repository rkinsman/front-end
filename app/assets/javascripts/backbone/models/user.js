var app = app || {};

(function() {
  'use strict';

  app.User = Backbone.Model.extend({
    defaults: {
      username: ""
      //lessons: []
    },

    initialize: function() {
      //console.log("I just got made and my name is: " + this.get('username'));
      if(app.session) { app.session.signin({'user_id': this.get('username')}); }
    },

    url: function() {
      var base = 'users';
      if (this.isNew()) return base;
      return base + (base.charAt(base.length - 1) == '/' ? '' : '/') + this.id + '.json';
    }
  });
}());
