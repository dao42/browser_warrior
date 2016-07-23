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
  s.summary     = "Summary of BrowserWarrior."
  s.description = "Description of BrowserWarrior."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0"
  s.add_dependency "sass-rails", "~> 5.0"
  s.add_dependency "browser"
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'byebug'
end
