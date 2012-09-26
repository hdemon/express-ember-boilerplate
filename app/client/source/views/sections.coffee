define ['lib/underscore-min', 'lib/ember', 'app', 'views'], (_, Ember, App) ->
  App.SectionsView =
    Ember.View.extend(templateName: "sections")
