require "browser_warrior/engine"
require 'browser'

module BrowserWarrior
  module Controllers
    module Helpers
      extend ActiveSupport::Concern

      def check_browser_warrior!
        browser = ::Browser.new(request.user_agent)
        if BrowserWarrior.do_detect(browser)
          render 'browser_warrior/index', layout: false
        end
      end
    end
  end
end

module BrowserWarrior
  @detect_block = nil
  def self.detect(&block)
    @detect_block = block
  end

  def self.do_detect(browser)
    @detect_block.call(browser)
  end
end
