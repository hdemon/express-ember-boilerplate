
define(['lib/underscore-min', 'lib/ember', 'app', 'controllers'], function(_, Ember, App) {
  return App.SectionsController = Ember.Controller.extend({
    isSectionA: App.util.stateFlag("sectionA"),
    isSectionB: App.util.stateFlag("sectionB"),
    isSectionC: App.util.stateFlag("sectionC"),
    isSectionD: App.util.stateFlag("sectionD")
  });
});
