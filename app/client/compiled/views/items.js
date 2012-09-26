
define(['lib/underscore-min', 'lib/ember', 'app', 'views'], function(_, Ember, App) {
  return App.ItemsView = Ember.View.extend({
    templateName: "items"
  });
});
