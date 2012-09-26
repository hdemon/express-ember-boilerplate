
define(['lib/underscore-min', 'lib/ember', 'app', 'views'], function(_, Ember, App) {
  return App.ApplicationView = Ember.View.extend({
    templateName: "application"
  });
});
