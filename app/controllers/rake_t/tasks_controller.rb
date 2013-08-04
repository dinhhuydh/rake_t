module RakeT
  class TasksController < RakeT::ApplicationController
    layout 'rake_t/application'
    before_filter :load_tasks

    def index
      @tasks = RakeT.all_tasks
    end

    def show
      tmp = $stdout
      @output = StringIO.new
      $stdout = @output
      Rake::Task[params[:name].to_s].execute
      @output.rewind
      $stdout = tmp
    end

    private

    def load_tasks
      RakeT.load_tasks
    end
  end
end
