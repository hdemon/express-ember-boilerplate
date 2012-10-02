App.SectionsController =
  Ember.Controller.extend
    isSectionA: App.util.stateFlag("sectionA")
    isSectionB: App.util.stateFlag("sectionB")
    isSectionC: App.util.stateFlag("sectionC")
    isSectionD: App.util.stateFlag("sectionD")
