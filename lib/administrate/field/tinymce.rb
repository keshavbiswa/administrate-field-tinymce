require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class Tinymce < Administrate::Field::Base
      class Engine < ::Rails::Engine
        Administrate::Engine.add_javascript 'administrate-field-tinymce/application'
      end

      def to_s
        data
      end
    end
  end
end