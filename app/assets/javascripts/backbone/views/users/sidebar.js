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
      console.log("sidebar render");
      var lessons = this.model.lessons;
      this.$el.html(this.template(lessons));
      console.log(this.el);
      return this;
    }

  });
});
