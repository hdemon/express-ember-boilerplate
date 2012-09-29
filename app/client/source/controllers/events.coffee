define ['lib/underscore-min', 'lib/ember', 'app', 'controllers'], (_, Ember, App) ->
  App.EventsController =
    Ember.ObjectController.extend
      title: 'title'
      description: 'desc'
