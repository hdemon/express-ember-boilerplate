define ['lib/underscore-min', 'lib/ember', 'app', 'views'], (_, Ember, App) ->
  App.ItemView = Ember.View.extend(templateName: "item")
