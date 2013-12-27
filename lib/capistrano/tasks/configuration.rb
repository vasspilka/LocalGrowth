  task :application do
  	execute "cp #{current_path}/config/application.example.yml #{current_path}/config/application.yml"
  end