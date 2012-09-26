
define(['lib/underscore-min', 'lib/ember', 'app'], function(_, Ember, App) {
  App.util = {};
  App.util.stateFlag = function(name) {
    return Ember.computed(function() {
      var state;
      state = App.router.currentState;
      while (state) {
        if (state.name === name) {
          return true;
        }
        state = state.get("parentState");
      }
      return false;
    }).property("App.router.currentState");
  };
  return Ember.Handlebars.registerHelper("lorem", function(options) {
    var opts;
    opts = {
      ptags: true
    };
    if (options.hash.type) {
      opts.type = options.hash.type;
    }
    if (options.hash.amount) {
      opts.amount = options.hash.amount;
    }
    return new Handlebars.SafeString($("<div></div>").lorem(opts).html());
  });
});
