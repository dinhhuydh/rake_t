require 'rake_t/engine'
require 'rails/routes'
require 'rake'

module RakeT
  def self.all_tasks
    Rails.application.load_tasks
    Rake::Task.tasks
  end
end
