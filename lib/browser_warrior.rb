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
        browser = ::Browser.new(request.user_agent)
        if ! BrowserWarrior.do_detect(browser)
          render 'browser_warrior/index', layout: false
        end
      end
    end
  end

  @detect_block = lambda do |browser|
    if browser.ie?(6) or browser.ie?(7) or browser.ie?(8)
      false
    else
      true
    end
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
