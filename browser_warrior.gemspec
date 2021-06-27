$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "browser_warrior/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "browser_warrior"
  s.version     = BrowserWarrior::VERSION
  s.authors     = ["yafeilee"]
  s.email       = ["lyfi2003@gmail.com"]
  s.homepage    = "https://github.com/80percent/browser_warrior"
  s.summary     = "Make your Rails app reject your non-modern browser user just one line code"
  s.description = "BrowserWarrior is a Ruby on Rails engine that let you reject your non-modern browser user just one line code"
  s.license     = "MIT"

  s.files = Dir["{app,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0", "< 7"
  s.add_dependency "sass-rails"
  s.add_dependency "browser", ">= 4.0", "< 5"
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'byebug'
end
