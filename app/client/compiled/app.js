
define(['lib/underscore-min', 'lib/ember', 'app'], function(_, Ember, App) {
  Ember.Handlebars.registerHelper("lorem", function(options) {
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
  return window.App = Ember.Application.create();
});
