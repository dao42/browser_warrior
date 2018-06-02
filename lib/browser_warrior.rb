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

        # ignore post request
        if request.post?
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

    if ! browser.modern?
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
