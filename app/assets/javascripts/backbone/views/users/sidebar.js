var app = app || {};

$(function() {
  'use strict';

  app.UserSidebarView = Backbone.View.extend({
    tagName :   'div',
    template :  JST['backbone/templates/lessons/index'],

    events : {
      //li.onclick ("Expand this lesson n jank")
    },


    initialize : function() {
      
    },

    render: function() {
      console.log(this.el);
      console.log("sidebar render");
      var lessons = this.model.lessons;
   //   this.$(this.el.html(this.template(lessons)));
      return this;
    }

  });
});
