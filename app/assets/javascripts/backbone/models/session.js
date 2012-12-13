//Code adapted from:
//http://whatcodecraves.com/articles/2012/01/11/backbonejs-sessions-and-authentication
var app = app || {};

(function() {
  'use strict';

  app.Session = Backbone.Model.extend({
    defaults: {
      user: false
    },

    initialize : function() {
      this.load();
    },

    authenticated : function(){
      return(this.get('user'));
    },

    load : function() {
      var id = $.cookie('user_id'));
      if(id) {
        this.set('user', new app.User({"username" : id})); 
      }
      
    },

    signin: function(user_model) {
      $.cookie('user_id', user_model.get('id'));
      this.set('user', user_model);
    },

    signout : function() {
      $.removeCookie('user_id');
      this.set('user', false);
    }

  });
}());
