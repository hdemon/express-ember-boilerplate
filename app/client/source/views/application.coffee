define ['compiled/app', './core'], (App) ->
  App.ApplicationView =
    Ember.View.extend(templateName: "application")
