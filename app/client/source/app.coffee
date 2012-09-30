define ['lib/underscore-min', 'lib/ember'], (_, Ember) ->
  # Handlebars helper to generate lorem ipsum text

  Ember.Handlebars.registerHelper "lorem", (options) ->
    opts = ptags: true
    opts.type = options.hash.type  if options.hash.type
    opts.amount = options.hash.amount  if options.hash.amount
    new Handlebars.SafeString($("<div></div>").lorem(opts).html())

  window.App = Ember.Application.create()