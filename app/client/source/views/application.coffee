define ['lib/underscore-min', 'lib/ember', 'app', 'views'], (_, Ember, App) ->
  App.ApplicationView =
    Ember.View.extend(templateName: "application")
