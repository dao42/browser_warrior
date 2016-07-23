module BrowserWarrior
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      desc "Create a browser_warrior initializer"
      def copy_initializer
        template "browser_warrior.rb", "config/initializers/browser_warrior.rb"
      end
    end
  end
end
