module BrowserWarrior
  class Engine < ::Rails::Engine
    isolate_namespace BrowserWarrior

    initializer "browser_warrior.helprs" do
    end

  end
end
