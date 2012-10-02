# A helper function to define routes for better code reuse
sectionRoute = (name) ->
  Ember.Route.extend
    route: name
    connectOutlets: (router, context) ->
      SectionView = Ember.View.extend(templateName: "section" + name)
      router.get("sectionsController").connectOutlet viewClass: SectionView


App.Router = Ember.Router.extend
  enableLogging: true
  location: "history"

  root: Ember.Route.extend
    doHome: (router, event) ->
      router.transitionTo "home"

    doSections: (router, event) ->
      router.transitionTo "sections.index"

    doItems: (router, event) ->
      router.transitionTo "items.index"

    doEvents: (router, event) ->
      router.transitionTo "events.index"

    home: Ember.Route.extend
      route: "/"
      connectOutlets: (router, event) ->
        router.get("applicationController").connectOutlet "home"

    sections: Ember.Route.extend
      route: "/sections"
      connectOutlets: (router, event) ->
        router.get("applicationController").connectOutlet "sections"

      index: Ember.Route.extend(route: "/")
      doSectionA: (router, event) ->
        router.transitionTo "sections.sectionA"

      sectionA: sectionRoute("A")
      doSectionB: (router, event) ->
        router.transitionTo "sections.sectionB"

      sectionB: sectionRoute("B")
      doSectionC: (router, event) ->
        router.transitionTo "sections.sectionC"

      sectionC: sectionRoute("C")
      doSectionD: (router, event) ->
        router.transitionTo "sections.sectionD"

      sectionD: sectionRoute("D")


    items: Ember.Route.extend
      route: "/items"

      index: Ember.Route.extend
        route: "/"
        connectOutlets: (router, context) ->
          router.get("applicationController").connectOutlet "items"

      item: Ember.Route.extend
        route: "/:item_id"
        connectOutlets: (router, context) ->
          item = router.getPath("itemsController.content").objectAt(context.item_id)
          router.get("itemController").set "content", item
          router.get("applicationController").connectOutlet "item"

      doItem: (router, event) ->
        router.transitionTo "item",
          item_id: event.context.id

    events: Ember.Route.extend
      route: "/events"

      index: Ember.Route.extend
        route: "/"
        connectOutlets: (router, context) ->
          router.get("applicationController").connectOutlet "events"
