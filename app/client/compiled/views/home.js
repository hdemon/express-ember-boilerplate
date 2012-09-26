
define(['lib/underscore-min', 'lib/ember', 'app', 'views'], function(_, Ember, App) {
  return App.HomeView = Ember.View.extend({
    templateName: "home"
  });
});
