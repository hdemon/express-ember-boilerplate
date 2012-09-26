
define(['lib/underscore-min', 'lib/ember', 'app', 'views'], function(_, Ember, App) {
  return App.ItemView = Ember.View.extend({
    templateName: "item"
  });
});
