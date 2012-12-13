var app = app || {};

(function() {
  'use strict';

  app.Session = Backbone.Model.extend({
    defaults: {
      sid: "",
      user_id: ""
      //lessons: []
    },

    initialize : function() {
      this.load();
    },

    authenticated : function(){
      return(this.get('sid'));
    },

    load : function() {
      this.user_id = $.cookie('user_id');
      this.sid = $.cookie('_front-end_session');
    }


  });
}());
