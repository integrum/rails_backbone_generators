Rails Backbone Generators
=========================

Generators for creating CoffeeScript Backbone Views, Models, Collections and Routers

Backbone Model
--------------

Create a CoffeeScript Backbone model with spec

Example:

    rails generate backbone:model thing

This will create:

    app/assets/javascript/models/thing.js.coffee
    spec/javascript/models/thing_spec.js.coffee

Backbone Collection
-------------------

Create a CoffeeScript Backbone collection with spec

Example:

    rails generate backbone:collection things

This will create:

    app/assets/javascript/collections/things.js.coffee
    spec/javascript/collections/things_spec.js.coffee

Backbone View
-------------

Create a CoffeeScript Backbone view with template and spec

Example:

    rails generate backbone:view thing

This will create:

    app/assets/javascript/views/thing_view.js.coffee
    app/assets/javascript/templates/thing.jst.eco
    spec/javascript/views/thing_view_spec.js.coffee

Backbone Router
---------------

Create a CoffeeScript Backbone router with spec

Example:

    rails generate backbone:router thing

This will create:

    app/assets/javascript/routers/thing_router.js.coffee
    spec/javascript/routers/thing_router_spec.js.coffee
