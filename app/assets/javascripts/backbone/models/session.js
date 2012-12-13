//Code adapted from:
//http://whatcodecraves.com/articles/2012/01/11/backbonejs-sessions-and-authentication
var app = app || {};

(function() {
  'use strict';

  app.Session = Backbone.Model.extend({
    defaults: {
      user_id: false,
      user: false
    },

    initialize : function() {
      this.load();
    },

    authenticated : function(){
      return(this.get('user_id'));
    },

    load : function() {
      this.set('user_id', $.cookie('user_id'));
      var id = this.get('user_id');

      if(id) {
        this.set('user', app.Users.create({"username" : id})); 
      }
      
    },

    signin: function(auth_hash) {
      $.cookie('user_id', auth_hash['user_id']);
      this.set('user_id', auth_hash['user_id']);
      this.set('user', app.Users.get(auth_hash['user_id']));
    },

    signout : function() {
      $.removeCookie('user_id');
      this.set('user_id', false);
      this.set('user', false);
    }

  });
}());
