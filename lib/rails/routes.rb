module ActionDispatch::Routing
  class Mapper
    def mount_rake_t
      get "rails/rake_tasks" => "rake_t/tasks#index"
      get "rails/rake_tasks/:name" => "rake_t/tasks#show"
      mount RakeT::Engine => "/rake_t", :as => "rake_t_engine"
    end
  end
end
