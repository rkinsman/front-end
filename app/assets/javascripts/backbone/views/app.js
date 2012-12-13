var app = app || {};

$(function($) {
  'use strict';

  app.AppView = Backbone.View.extend({
    el: '#main',

    template: _.template(JST['backbone/templates/main/main']()),

    events: {
      'click #user-submit': 'makeUser'
    },

    initialize : function() {
      app.session = new app.Session();
      app.session.authenticated() ? this.userDash : this.renderIndex() ;

      app.Users.on('complete', this.userDash, this);
    },

    userDash: function() {
      console.log("user dash");
      //var view = new app.UsersView({model: app.currentUser});
      //this.$el.html(
    },

    renderHeader : function() {
      console.log('rendering header...');

    },

    renderIndex: function() {
      //console.log(this.$el);
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
