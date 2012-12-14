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
      this.$el.html(this.template(this.model.get('lessons')));
      return this;
    }

  });
});
