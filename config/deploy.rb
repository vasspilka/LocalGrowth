require 'sshkit'

set :application, 'lamiatodo'

set :repo_url, 'https://github.com/vasspilka/LocalGrowth'
set :branch, 'master'
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

set :deploy_to, "/home/user/apps/www/#{fetch(:application)}"
set :scm, :git
set :deploy_via, :remote_cache
set :use_sudo, false
set :format, :pretty
set :log_level, :debug
set :pty, true

#set :linked_files, %w{config/database.yml}
#set :linked_files, %w{config/application.yml}

# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# set :keep_releases, 5


namespace :deploy do
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute "touch #{File.join(current_path,'tmp','restart.txt')}"
    end
  end
 before :updated, "configure:application"
end


# Dont forget to copy the database.yml and application.yml to your server example below
# scp config/application.yml me@my_server:path_to_deploy/shared/config
namespace :configure do
  task :application do
  	on roles(:app), in: :sequence, wait: 5 do
  	  execute "ln -nfs #{deploy_to}/shared/config/database.yml #{release_path}/config/database.yml"
  	  execute "ln -nfs #{deploy_to}/shared/config/application.yml #{release_path}/config/application.yml"
  	end
  end
end
