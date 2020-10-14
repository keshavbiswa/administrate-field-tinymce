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

      def rows
        options.fetch(:rows, 40)
      end

      def columns
        options.fetch(:columns, 120)
      end
    end
  end
end