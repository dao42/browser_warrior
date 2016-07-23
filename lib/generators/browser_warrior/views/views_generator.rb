module BrowserWarrior
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      source_root ::BrowserWarrior::ROOT
      desc "Copy views & css files into main app"

      def copy_views
        copy_file "app/views/browser_warrior/index.html.erb", "app/views/browser_warrior/index.html.erb"
      end

      def copy_css_image
        copy_file "app/assets/stylesheets/browser_warrior/application.scss", "app/assets/stylesheets/browser_warrior/application.scss"
        copy_file "app/assets/images/browser_warrior/chrome.png", "app/assets/images/browser_warrior/chrome.png"
        copy_file "app/assets/images/browser_warrior/firefox.png", "app/assets/images/browser_warrior/firefox.png"
        copy_file "app/assets/images/browser_warrior/ie.png", "app/assets/images/browser_warrior/ie.png"
        copy_file "app/assets/images/browser_warrior/opera.png", "app/assets/images/browser_warrior/opera.png"
      end
    end
  end
end
