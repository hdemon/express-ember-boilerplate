
define(['lib/underscore-min', 'lib/ember', 'app', 'controllers'], function(_, Ember, App) {
  return App.ApplicationController = Ember.Controller.extend({
    isHome: App.util.stateFlag("home"),
    isSections: App.util.stateFlag("sections"),
    isItems: App.util.stateFlag("items")
  });
});
