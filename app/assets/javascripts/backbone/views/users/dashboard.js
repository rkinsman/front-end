var app = app || {};

$(function() {
  'use strict';

  app.UserDashboardView = Backbone.View.extend({
    tagName :   'div',
    template :  JST['backbone/templates/main/userDash'],

    events : {
    
    },


    initialize : function() {
      //console.log('call me maybe');
    },



    render : function(){
      this.$el.html(this.template(this.model.toJSON()));
      this.side = new app.UserSidebarView({"model": this.model});

      assign(this.side, '#sidebar');

      return this;
    },

  });
});
