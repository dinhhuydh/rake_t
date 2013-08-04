module RakeT
  class TasksController < RakeT::ApplicationController
    layout 'rake_t/application'

    def index
      @tasks = RakeT.all_tasks
    end

    def show
      tmp = $stdout
      @output = StringIO.new
      $stdout = @output
      Rake::Task[params[:name].to_s].invoke
      @output.rewind
      $stdout = tmp
    end
  end
end
