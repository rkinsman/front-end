var app = app || {};

$(function($) {
  'use strict';

  app.AppView = Backbone.View.extend({
    el: '#main',

    template: _.template(JST['backbone/templates/main/main']()),

    events: {
      'click #user-submit': 'makeUser'
    },

    initialize: function() {
      app.currentUser ? this.userDash() : this.newUser();
      app.Users.on('add', 
      //Lessons.fetch()
    },

    userDash: function() {
      console.log("user dash");
      //var view = new app.UsersView({model: app.currentUser});
      //this.$el.html(
    },

    newUser: function() {
      this.$el.html(JST['backbone/templates/users/new']());
    },

    makeUser: function() {
      app.Users.create({"username": $('#username').val()});
    },

    render: function() {
      this.$el.html(this.template());
      return this;
    }

  });
});
