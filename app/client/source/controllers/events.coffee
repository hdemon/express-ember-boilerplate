define ['compiled/app', './core'], (App) ->
  App.EventsController =
    Ember.ObjectController.extend
      title: 'title'
      description: 'desc'
