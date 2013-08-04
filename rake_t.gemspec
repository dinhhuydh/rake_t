$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rake_t/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rake_t"
  s.version     = RakeT::VERSION
  s.authors     = ["Huy Dinh"]
  s.email       = ["dinhhuydh@gmail.com"]
  s.homepage    = "https://github.com/dinhhuydh"
  s.summary     = "List and run rake tasks on browser"
  s.description = "List and run rake tasks on browser"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"

  s.add_development_dependency "capybara"
  s.add_development_dependency "launchy"
  s.add_development_dependency "poltergeist"
  s.add_development_dependency "sqlite3"
end
