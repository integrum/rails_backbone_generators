module Backbone
  class ModelGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    def copy_model_file
      template 'model.js.coffee', "app/assets/javascripts/models/#{singular_file_name}.js.coffee"
    end

    def copy_spec_file
      template 'model_spec.js.coffee', "spec/javascripts/models/#{singular_file_name}_spec.js.coffee"
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
