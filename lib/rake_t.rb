require 'rake_t/engine'
require 'rails/rake_t'
require 'rake'

module RakeT
  def self.all_tasks
    Rake::Task.tasks
  end

  def self.load_tasks
    Rails.application.load_tasks
  end
end
