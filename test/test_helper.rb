# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/test_help"

Rails.backtrace_cleaner.remove_silencers!

# Configure capybara
require "capybara/rails"
require "capybara/poltergeist"

#Capybara.register_driver :chrome do |app|
  #Capybara::Selenium::Driver.new(app, browser: :chrome)
#end
Capybara.register_driver :poltergeist_debug do |app|
  Capybara::Poltergeist::Driver.new(app, inspector: true)
end

#Capybara.javascript_driver = :chrome
Capybara.javascript_driver = :poltergeist_debug
Capybara.default_selector = :css


# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

# Load fixtures from the engine
if ActiveSupport::TestCase.method_defined?(:fixture_path=)
  ActiveSupport::TestCase.fixture_path = File.expand_path("../fixtures", __FILE__)
end

#Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f }
