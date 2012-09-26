define ['lib/underscore-min', 'lib/ember', 'app', 'views'], (_, Ember, App) ->
  App.ItemsView = Ember.View.extend(templateName: "items")
