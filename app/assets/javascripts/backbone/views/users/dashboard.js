var app = app || {};

$(function() {
  'use strict';

  app.UserDashboardView = Backbone.View.extend({
    tagName :   'div',
    template :  JST['backbone/templates/main/userDash'],

    events : {
    
    },


    initialize : function(){
    console.log('call me maybe');
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
