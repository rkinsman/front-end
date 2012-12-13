var app = app || {};

$(function() {
  'use strict';

  app.UserDashboardView = Backbone.View.extend({
    el :        '#main',

    template :  JST['backbone/templates/main/userDash'],

    model :     app.User,


    events : {
    
    },


    initialize : function(){
    console.log('call me maybe');
      this.model = app.Users.get(app.session.get('user_id'));
      this.$el.html(this.template(this.model.toJSON()));
      this.render_sidebar();
      this.render_focus_box();
    },


    render_sidebar : function(){
      this.$el.append();
    },


    render_focus_box : function(){
      this.$el.append();
    }

  });
});
