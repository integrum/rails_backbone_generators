module Backbone
  class RouterGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    def copy_router_file
      template 'router.js.coffee', "app/assets/javascripts/routers/#{file_name}_router.js.coffee"
    end

    def copy_spec_file
      template 'router_spec.js.coffee', "spec/javascripts/routers/#{file_name}_router_spec.js.coffee"
    end
  end
end
