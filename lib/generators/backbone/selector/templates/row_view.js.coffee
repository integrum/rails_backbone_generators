class window.<%= singular_class_name %>SelectorRowView extends Backbone.View
  template: JST['templates/<%= singular_file_name %>_selector_row']
  tagName: 'li'

  initialize: =>
    @listenTo @model, 'remove', @remove
    @listenTo @model, 'change', @render

  context: =>
    model: @model.toJSON()

  render: =>
    @$el.html @template @context()
    this

  events: =>
    'click': 'click'

  click: ($event) =>
    $event.preventDefault()
    $event.stopPropagation()

    @model.destroy()
