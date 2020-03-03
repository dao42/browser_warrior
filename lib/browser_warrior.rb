require "browser_warrior/engine"
require 'browser/version'
require 'browser'

module BrowserWarrior

  ROOT = File.expand_path(File.join( File.dirname(__FILE__), '..'))

  module Controllers
    module Helpers
      extend ActiveSupport::Concern
      included do
        before_action :check_browser_warrior! if BrowserWarrior.autoenable
      end

      def check_browser_warrior!
        # ignore rails inline controller
        if params[:controller] == 'rails/welcome'
          return
        end

        # ignore no html controller
        if params[:format].present? && params[:format] != :html
          return
        end

        # ignore non-get request
        if ! request.get?
          return
        end

        browser = ::Browser.new(request.user_agent)
        if ! BrowserWarrior.do_detect(browser)
          render 'browser_warrior/index', layout: false
        end
      end
    end
  end

  @detect_block = lambda do |browser|
    next true if Rails.env.test?
    next true if browser.bot?

    # Allow weixin callback
    next true if browser.platform.other?

    is_modern_browser = [
      browser.chrome?(">= 65"),
      browser.safari?(">= 10"),
      browser.firefox?(">= 52"),
      browser.ie?(">= 11") && !browser.compatibility_view?,
      browser.edge?(">= 15"),
      browser.opera?(">= 50"),
      browser.facebook? && browser.safari_webapp_mode? && browser.webkit_full_version.to_i >= 602
    ].any?

    if ! is_modern_browser
      next false
    end

    next true
  end

  @@autoenable = true
  mattr_accessor :autoenable

  def self.detect(&block)
    @detect_block = block
  end

  def self.do_detect(browser)
    @detect_block.call(browser)
  end
end
