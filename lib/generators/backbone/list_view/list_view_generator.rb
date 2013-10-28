module Backbone
  class ListViewGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    def copy_model_file
      template 'model.js.coffee', "app/assets/javascripts/models/#{singular_file_name}.js.coffee"
    end

    def copy_collection_file
      template 'collection.js.coffee', "app/assets/javascripts/collections/#{plural_file_name}.js.coffee"
    end

    def copy_row_view_file
      template 'row_view.js.coffee', "app/assets/javascripts/views/#{singular_file_name}_row_view.js.coffee"
    end

    def copy_list_view_file
      template 'list_view.js.coffee', "app/assets/javascripts/views/#{plural_file_name}_list_view.js.coffee"
    end

    def copy_row_template_file
      template 'row.jst.eco', "app/assets/javascripts/templates/#{singular_file_name}_row.jst.eco"
    end

    def copy_list_template_file
      template 'list.jst.eco', "app/assets/javascripts/templates/#{plural_file_name}_list.jst.eco"
    end

    def copy_model_spec_file
      template 'model_spec.js.coffee', "spec/javascripts/models/#{singular_file_name}_spec.js.coffee"
    end

    def copy_collection_spec_file
      template 'collection_spec.js.coffee', "spec/javascripts/collections/#{plural_file_name}_spec.js.coffee"
    end

    def copy_row_view_spec_file
      template 'row_view_spec.js.coffee', "spec/javascripts/views/#{singular_file_name}_row_view_spec.js.coffee"
    end

    def copy_list_view_spec_file
      template 'list_view_spec.js.coffee', "spec/javascripts/views/#{plural_file_name}_list_view_spec.js.coffee"
    end

    protected
    def plural_class_name
      @plural_class_name ||= class_name.pluralize
    end

    def singular_class_name
      @singular_class_name ||= class_name.singularize
    end

    def singular_file_name
      @singular_file_name ||= file_name.singularize
    end
  end
end
