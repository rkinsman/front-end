var app = app || {};

(function() {
  'use strict';

  app.User = Backbone.Model.extend({
    defaults: {
      username: ""
      //lessons: []
    },

    initialize: function() {
      this.makeme();
      app.currentUser = this;
    },

    makeme: function() {
      console.log(this.toJSON());
/*      $.ajax({
        url: '/users.json',
        type: 'post',
        data: this.toJSON()
      }).done(function(data) { console.log(data); });
      */
    },

    url: function() {
      var base = 'users';
      if (this.isNew()) return base;
      return base + (base.charAt(base.length - 1) == '/' ? '' : '/') + this.id + '.json';
    }
  });
}());
