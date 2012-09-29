
define(["lib/ember", 'app'], function(Ember, App) {
  var sectionRoute;
  sectionRoute = function(name) {
    return Ember.Route.extend({
      route: name,
      connectOutlets: function(router, context) {
        var SectionView;
        SectionView = Ember.View.extend({
          templateName: "section" + name
        });
        return router.get("sectionsController").connectOutlet({
          viewClass: SectionView
        });
      }
    });
  };
  return App.Router = Ember.Router.extend({
    enableLogging: true,
    location: "history",
    root: Ember.Route.extend({
      doHome: function(router, event) {
        return router.transitionTo("home");
      },
      doSections: function(router, event) {
        return router.transitionTo("sections.index");
      },
      doItems: function(router, event) {
        return router.transitionTo("items.index");
      },
      doEvents: function(router, event) {
        return router.transitionTo("events.index");
      },
      home: Ember.Route.extend({
        route: "/",
        connectOutlets: function(router, event) {
          return router.get("applicationController").connectOutlet("home");
        }
      }),
      sections: Ember.Route.extend({
        route: "/sections",
        connectOutlets: function(router, event) {
          return router.get("applicationController").connectOutlet("sections");
        },
        index: Ember.Route.extend({
          route: "/"
        }),
        doSectionA: function(router, event) {
          return router.transitionTo("sections.sectionA");
        },
        sectionA: sectionRoute("A"),
        doSectionB: function(router, event) {
          return router.transitionTo("sections.sectionB");
        },
        sectionB: sectionRoute("B"),
        doSectionC: function(router, event) {
          return router.transitionTo("sections.sectionC");
        },
        sectionC: sectionRoute("C"),
        doSectionD: function(router, event) {
          return router.transitionTo("sections.sectionD");
        },
        sectionD: sectionRoute("D")
      }),
      items: Ember.Route.extend({
        route: "/items",
        index: Ember.Route.extend({
          route: "/",
          connectOutlets: function(router, context) {
            return router.get("applicationController").connectOutlet("items");
          }
        }),
        item: Ember.Route.extend({
          route: "/:item_id",
          connectOutlets: function(router, context) {
            var item;
            item = router.getPath("itemsController.content").objectAt(context.item_id);
            router.get("itemController").set("content", item);
            return router.get("applicationController").connectOutlet("item");
          }
        }),
        doItem: function(router, event) {
          return router.transitionTo("item", {
            item_id: event.context.id
          });
        }
      }),
      events: Ember.Route.extend({
        route: "/events",
        index: Ember.Route.extend({
          route: "/",
          connectOutlets: function(router, context) {
            return router.get("applicationController").connectOutlet("events");
          }
        })
      })
    })
  });
});
