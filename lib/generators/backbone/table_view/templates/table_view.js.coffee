class window.<%= plural_class_name %>TableView extends Backbone.View
  template: JST['templates/<%= plural_file_name %>_table']

  initialize: =>
    @views = []
    @tableenTo @collection, 'add', @add_one
    @tableenTo @collection, 'sync error request reset', @render
    @tableenTo @collection, 'search', @render

  context: =>
    loading: @collection.loading

  render: =>
    @$el.html @template @context()
    @remove_views()
    @collection.each @add_one
    this

  remove: =>
    @remove_views()
    super

  # Instance Methods
  add_one: (model) =>
    view = new <%= singular_class_name %>RowView model: model
    @$('table').append view.render().$el
    @views.push view

  remove_views: =>
    _.each @views, (view) =>
      view.remove()

    @views = []
