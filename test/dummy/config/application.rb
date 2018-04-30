require_relative 'boot'

require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
require "rails/test_unit/railtie"
require 'action_cable/engine'

Bundler.require(*Rails.groups)
require "browser_warrior"

module Dummy
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.i18n.available_locales = ['zh-CN', 'en']
    config.i18n.default_locale = 'zh-CN'
  end
end

