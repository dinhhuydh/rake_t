require 'test_helper'

class NavigationTest < ActiveSupport::IntegrationCase
  setup do
    Capybara.current_driver = Capybara.javascript_driver
  end

  test 'default index' do
    visit '/rails/rake_tasks'

    assert has_content?('Rake tasks')
    assert has_content?('rake_t_test')
  end

  test 'show' do
    visit '/rails/rake_tasks'

    click_link 'about'
    assert has_content?('Ruby version')
  end
end
