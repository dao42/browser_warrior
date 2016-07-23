BrowserWarrior.detect do |browser|
  if browser.ie?(6)
    false
  elsif browser.ie?(7)
    false
  elsif browser.ie?(8)
    false
  else
    true
  end
end

ActiveSupport.on_load(:action_controller) do
  include BrowserWarrior::Controllers::Helpers
end
