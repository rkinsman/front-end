var app = app || {};

(function() {
  'use strict';

  var UsersList = Backbone.Collection.extend({
    model: app.User,
    url: '/users.json'
  });
  app.Users = new UsersList();
}());
