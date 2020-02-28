BrowserWarrior.detect do |browser|
  next true if Rails.env.test?
  next true if browser.bot?

  # Allow weixin callback
  next true if browser.platform.other?

  # See https://github.com/fnando/browser#usage for more usage

  is_modern_browser = \
    browser.chrome?(">= 65") or
    browser.safari?(">= 10") or
    browser.firefox?(">= 52") or
    browser.ie?(">= 11") && !browser.compatibility_view? or
    browser.edge?(">= 15") or
    browser.opera?(">= 50") or
    browser.facebook? \
      && browser.safari_webapp_mode? \
      && browser.webkit_full_version.to_i >= 602

  if ! is_modern_browser
    next false
  end

  next true
end
