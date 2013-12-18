module Backbone
  class SelectorGenerator < Rails::Generators::NamedBase
    argument :receiver, :type => :string
    argument :emittor, :type => :string
    source_root File.expand_path('../templates', __FILE__)

    def copy_collection_files
      template 'collection.js.coffee', "app/assets/javascripts/collections/#{plural_file_name}.js.coffee"
    end

    def copy_list_view_files
      template 'list_view.js.coffee', "app/assets/javascripts/views/#{plural_file_name}_selector_list_view.js.coffee"
      template 'list.jst.eco', "app/assets/javascripts/templates/#{plural_file_name}_selector_list.jst.eco"
    end

    def copy_model_files
      template 'receiver_model.js.coffee', "app/assets/javascripts/models/#{singular_receiver_file_name}.js.coffee"
      template 'model.js.coffee', "app/assets/javascripts/models/#{singular_file_name}.js.coffee"
    end

    def router
      template 'router.js.coffee', "app/assets/javascripts/routers/#{plural_file_name}_selector_router.js.coffee"
    end

    def copy_row_view_files
      template 'row_view.js.coffee', "app/assets/javascripts/views/#{singular_file_name}_selector_row_view.js.coffee"
      template 'row.jst.eco', "app/assets/javascripts/templates/#{singular_file_name}_selector_row.jst.eco"
    end

    def copy_view
      template 'view.js.coffee', "app/assets/javascripts/views/#{plural_file_name}_selector_view.js.coffee"
      template 'template.jst.eco', "app/assets/javascripts/templates/#{plural_file_name}_selector.jst.eco"
    end

    protected

    def emittor_file_name
      @emittor_file_name ||= parse_file_name emittor
    end

    def human_name
      plural_file_name.humanize.titleize
    end

    def plural_class_name
      @plural_class_name ||= class_name.pluralize
    end

    def plural_receiver_file_name
      @plural_receiver_file_name ||= singular_receiver_file_name.pluralize
    end

    def plural_emittor_file_name
      @plural_emittor_file_name ||= singular_emittor_file_name.pluralize
    end

    def singular_class_name
      @singular_class_name ||= class_name.singularize
    end

    def singular_emittor_class_name
      @singular_emittor_class_name ||= emittor_file_name.classify.singularize
    end

    def singular_file_name
      @singular_file_name ||= file_name.singularize
    end

    def singular_receiver_class_name
      @singular_receiver_class_name ||= receiver_file_name.classify.singularize
    end

    def singular_emittor_file_name
      @singular_emittor_file_name ||= emittor_file_name.singularize
    end

    def singular_receiver_file_name
      @singular_receiver_file_name ||= receiver_file_name.singularize
    end

    def receiver_file_name
      @receiver_file_name ||= parse_file_name receiver
    end

    def parse_file_name(name)
      class_path = name.include?('/') ? name.split('/') : name.split('::')
      class_path.last.underscore
    end
  end
end
