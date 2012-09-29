define ['lib/underscore-min', 'lib/ember', 'app', 'views'], (_, Ember, App) ->
  App.EventsView = Ember.View.extend(templateName: "item")
