define ['lib/underscore-min', 'lib/ember', 'app', 'controllers'], (_, Ember, App) ->
  App.ItemsController =
    Ember.ArrayController.extend
      init: ->
        @_super()
        items = []
        i = 0

        while i < 10
          description = $("<div></div>").lorem(ptags: true).html()
          items.push
            id: i
            title: "Item " + i
            description: description

          i++
        @set "content", Ember.A(items)
