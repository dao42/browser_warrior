BrowserWarrior.detect do |browser|
  next true if Rails.env.test?
  next true if browser.bot?

  # Allow weixin callback
  next true if browser.platform.other?

  # See https://github.com/fnando/browser#usage for more usage
  # Allow Webkit, Firefox 17+, IE 9+ and Opera 12+
  if ! browser.modern?
    next false
  end

  next true
end
