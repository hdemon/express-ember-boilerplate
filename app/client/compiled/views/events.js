
define(['lib/underscore-min', 'lib/ember', 'app', 'views'], function(_, Ember, App) {
  return App.EventsView = Ember.View.extend({
    templateName: "item"
  });
});
