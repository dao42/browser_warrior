BrowserWarrior.detect do |browser|
  # See https://github.com/fnando/browser#usage for more usage
  # Webkit, Firefox 17+, IE 9+ and Opera 12+
  if ! browser.modern?
    # reject when false
    false
  else
    true
  end
end
