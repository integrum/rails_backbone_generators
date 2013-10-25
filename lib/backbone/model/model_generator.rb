module Backbone
  class ModelGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    def copy_model_file
      template 'model.js.coffee', "app/assets/javascripts/models/#{file_name}.js.coffee"
    end

    def copy_spec_file
      template 'model_spec.js.coffee', "spec/javascripts/models/#{file_name}_spec.js.coffee"
    end
  end
end
