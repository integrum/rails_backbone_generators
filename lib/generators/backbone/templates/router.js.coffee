class <%= class_name %>SelectorRouter extends Backbone.Router
  routes:
    '<%= plural_receiver_file_name %>/:<%= singular_receiver_file_name %>_id/<%= plural_emittor_file_name %>': '<%= singular_receiver_file_name %>_<%= plural_emittor_file_name %>'

  <%= singular_receiver_file_name %>_<%= plural_emittor_file_name %>: (<%= singular_receiver_file_name %>_id) =>
    model = new <%= singular_receiver_class_name %> id: <%= singular_receiver_file_name %>_id
    model.fetch()
    view = new <%= plural_class_name %>SelectorView model: model
    $('.main-content').html view.render().$el

new <%= class_name %>SelectorRouter
