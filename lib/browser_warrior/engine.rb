module BrowserWarrior
  class Engine < ::Rails::Engine

    initializer "browser_warrior.helprs" do
      ActiveSupport.on_load(:action_controller) do
        include BrowserWarrior::Controllers::Helpers
      end
    end

  end
end
