define ['lib/underscore-min', 'lib/ember', 'app', 'views'], (_, Ember, App) ->
  App.HomeView =
    Ember.View.extend(templateName: "home")
