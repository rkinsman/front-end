var app = app || {};

$(function($) {
  'use strict';

  app.AppView = Backbone.View.extend({

    el: '#main',

    template: JST['backbone/templates/main/main'],

    events: {
      'click #user-submit': 'makeUser',
      'click #sign-in': 'signin',
      'click #sign-out': 'signout'
    },

    initialize : function() {
      app.session = new app.Session();
      app.session.on('change', this.render, this);
      this.render();
    },

    userDash: function() {
      var view = new app.UserDashboardView({ 'model' : app.session.get('user')});
      this.$container.html(view.render().el);
    },

    renderIndex: function() {
      this.$container.html(JST['backbone/templates/users/new']());
    },

    makeUser: function() {
      if( $("#password").val() == $("#passwordconfirm").val() ) {
        var user = new app.User({
          "username": $('#username').val(),
          "email" : $('#email').val()
        });
        user.go();
      } else {
        //PANIC
      }
    },

    render: function() {
      this.$el.html(this.template());

      this.$topbar = $('#topbar');
      this.$container = $('#container');
      if(app.session.authenticated()) {
        this.$topbar.html(JST['backbone/templates/main/logout']());
        this.userDash();
      } else {
        this.$topbar.html(JST['backbone/templates/main/login']());
        this.renderIndex();
      }
      return this;
    },

    signin: function() {
      app.session.signin(new app.User({'': $('#user_id').val()}));
    },

    signout: function() {
      app.session.signout();
      this.render();
    }

  });
});
