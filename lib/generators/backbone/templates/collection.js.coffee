class window.<%= plural_class_name %> extends Backbone.Collection
  model: <%= singular_class_name %>
  url: '/api/v2/<%= plural_file_name %>'
