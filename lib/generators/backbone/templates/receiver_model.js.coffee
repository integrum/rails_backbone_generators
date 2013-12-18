class window.<%= singular_receiver_class_name %> extends Backbone.Model
  urlRoot: '/api/v2/<%= plural_receiver_file_name %>'
  initialize: =>
    @available_<%= plural_file_name %> = new <%= plural_class_name %> @get 'available_<%= plural_file_name %>'
    @on 'change:available_<%= plural_file_name %>', => @available_<%= plural_file_name %>.set @get 'available_<%= plural_file_name %>'

    @<%= plural_file_name %> = new <%= plural_class_name %> @get '<%= plural_file_name %>'
    @on 'change:<%= plural_file_name %>', => @<%= plural_file_name %>.set @get '<%= plural_file_name %>'

    @listenTo @available_<%= plural_file_name %>, 'destroy', (model) =>
      @<%= plural_file_name %>.create model.clone()

    @listenTo @<%= plural_file_name %>, 'destroy', (model) =>
      model.unset 'id'
      @available_<%= plural_file_name %>.add model.clone()

