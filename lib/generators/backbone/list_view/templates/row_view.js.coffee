class window.<%= singular_class_name %>RowView extends Backbone.View
  template: JST['templates/<%= singular_file_name %>_row']
  tagName: 'li'

  context: =>
    model: @model.toJSON()

  render: =>
    @$el.html @template @context()
