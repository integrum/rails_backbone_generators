class window.<%= plural_class_name %>ListView extends Backbone.View
  template: JST['templates/<%= plural_file_name %>_list']

  initialize: =>
    @views = []
    @listenTo @collection, 'add', @add_one
    @listenTo @collection, 'sync error request reset', @render
    @listenTo @collection, 'search', @render

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
    @$('ul').append view.render().$el
    @views.push view

  remove_views: =>
    _.each @views, (view) =>
      view.remove()

    @views = []
