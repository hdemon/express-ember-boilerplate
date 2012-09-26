define ['lib/underscore-min', 'lib/ember', 'app'], (_, Ember, App) ->
  # A helper function to define a property used to render the navigation. Returns
  # true if a state with the specified name is somewhere along the current route.
  App.util = {}
  App.util.stateFlag = (name) ->
    Ember.computed(->
      state = App.router.currentState
      while state
        return true  if state.name is name
        state = state.get("parentState")
      false
    ).property "App.router.currentState"

  Ember.Handlebars.registerHelper "lorem", (options) ->
    opts = ptags: true
    opts.type = options.hash.type  if options.hash.type
    opts.amount = options.hash.amount  if options.hash.amount
    new Handlebars.SafeString($("<div></div>").lorem(opts).html())
