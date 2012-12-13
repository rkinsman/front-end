var app = app || {};

$(function($) {
  'use strict';

  app.AppView = Backbone.View.extend({
    el: '#main',

    template: _.template(JST['backbone/templates/main/main']()),

    events: {
      'click #user-submit': 'makeUser',
      'click #sign-in': 'signin',
      'click #sign-out': 'signout'
    },

    initialize : function() {
      app.session = new app.Session();
      this.$topbar = $('#topbar');
      this.$container = $('#container');
      this.render();
    },

    userDash: function() {
      console.log("user dash");
      //var view = new app.UserDashboardView({ 'model' : app.session.get('user')});
      //this.$container.html(view.render().el);
    },

    renderIndex: function() {
      console.log("renderIndex");
      this.$container.html(JST['backbone/templates/users/new']());
    },

    makeUser: function() {
      app.Users.create({"username": $('#username').val()});
    },

    render: function() {
      if(app.session.authenticated()) {
        this.$topbar.html(JST['backbone/templates/main/logout']());
        this.userDash() 
      } else {
        this.$topbar.html(JST['backbone/templates/main/login']());
        this.renderIndex() ;
      }
      return this;
    },

    signin: function() {
      app.session.signin({'user_id': $('#user_id').val()});
      this.render();
    },

    signout: function() {
      app.session.signout();
      this.render();
    }

  });
});
