
define(['lib/underscore-min', 'lib/ember', 'app', 'controllers'], function(_, Ember, App) {
  return App.ItemsController = Ember.ArrayController.extend({
    init: function() {
      var description, i, items;
      this._super();
      items = [];
      i = 0;
      while (i < 10) {
        description = $("<div></div>").lorem({
          ptags: true
        }).html();
        items.push({
          id: i,
          title: "Item " + i,
          description: description
        });
        i++;
      }
      return this.set("content", Ember.A(items));
    }
  });
});
