require 'rails/generators'

module DateWrapper
  module Generators
    class JavascriptsGenerator < ::Rails::Generators::Base

      desc <<-DOC
        date_wrapper/date_wrapper.coffee.erb
        date_wrapper.js
      DOC

      def self.source_root
        File.expand_path(File.join(File.dirname(__FILE__), '../../../app/assets/javascripts'))
      end

      def initialize(*args, &block)
        super
        generate_javascripts
      end

      private

      def generate_javascripts
        template "date_wrapper.js", "app/assets/javascripts/date_wrapper.js"
        copy_file "date_wrapper/date_wrapper.coffee.erb", "app/assets/javascripts/date_wrapper/date_wrapper.coffee.erb"
      end
    end
  end
end

