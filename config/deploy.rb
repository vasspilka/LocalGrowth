set :application, 'lamiatodo'

set :repo_url, 'https://github.com/vasspilka/LocalGrowth'
set :branch, 'reformat'
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

 set :deploy_to, '/var/www/lamiatodo'
 set :scm, :git

 set :format, :pretty
 set :log_level, :debug
# set :pty, true

# set :linked_files, %w{config/database.yml}
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# set :keep_releases, 5

namespace :deploy do
 task :start do ; end
 task :stop do ; end
 task :restart do
   run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
 end
end