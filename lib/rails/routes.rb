module ActionDispatch::Routing
  class Mapper
    def mount_rake_t
      get "rails/rake_tasks" => "rake_t/tasks#index"
      mount RakeT::Engine => "/rake_t", :as => "rake_t_engine"
    end
  end
end
