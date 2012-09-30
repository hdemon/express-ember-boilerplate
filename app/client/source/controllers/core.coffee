define ['compiled/app', 'lib/handlebars-1.0.0.beta.6'], (App, Handlebars) ->
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
