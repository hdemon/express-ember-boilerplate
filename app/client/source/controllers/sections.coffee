define ['lib/underscore-min', 'lib/ember', 'app', 'controllers'], (_, Ember, App) ->
  App.SectionsController =
    Ember.Controller.extend
      isSectionA: App.util.stateFlag("sectionA")
      isSectionB: App.util.stateFlag("sectionB")
      isSectionC: App.util.stateFlag("sectionC")
      isSectionD: App.util.stateFlag("sectionD")
