module RakeT
  class TasksController < RakeT::ApplicationController
    layout 'rake_t/application'

    def index
      @tasks = RakeT.all_tasks
    end
  end
end
