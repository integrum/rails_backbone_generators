class window.<%= plural_class_name %>SelectorView extends Backbone.View
  template: JST['templates/<%= plural_file_name %>_selector']

  context: =>
    {}

  render: =>
    @available_view?.remove()
    @existing_view?.remove()

    @$el.html @template @context()

    @available_view = new <%= plural_class_name %>SelectorListView collection: @model.available_<%= plural_file_name %>
    @$('.available').html @available_view.render().$el

    @existing_view = new <%= plural_class_name %>SelectorListView collection: @model.<%= plural_file_name %>
    @$('.existing').html @existing_view.render().$el

    this
