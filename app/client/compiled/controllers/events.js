
define(['lib/underscore-min', 'lib/ember', 'app', 'controllers'], function(_, Ember, App) {
  return App.EventsController = Ember.ObjectController.extend({
    title: 'title',
    description: 'desc'
  });
});
