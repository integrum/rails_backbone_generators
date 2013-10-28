module Backbone
  class CollectionGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    def copy_collection_file
      template 'collection.js.coffee', "app/assets/javascripts/collections/#{plural_file_name}.js.coffee"
    end

    def copy_model_file
      template 'model.js.coffee', "app/assets/javascripts/models/#{singular_file_name}.js.coffee"
    end

    def copy_spec_file
      template 'collection_spec.js.coffee', "spec/javascripts/collections/#{plural_file_name}_spec.js.coffee"
    end

    def copy_model_spec_file
      template 'model_spec.js.coffee', "spec/javascripts/models/#{singular_file_name}_spec.js.coffee"
    end

    protected
    def singular_file_name
      @singular_file_name ||= file_name.singularize
    end
  end
end
