BrowserWarrior.detect do |browser|
  # See https://github.com/fnando/browser#usage for more usage
  if browser.ie?(6) or browser.ie?(7) or browser.ie?(8)
    # reject when false
    false
  else
    true
  end
end
