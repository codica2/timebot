# config valid only for current version of Capistrano
# lock '3.6.1'

set :application, 'timebot'
set :repo_url, 'git@gitlab.codica.com:codica2/timebot.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

set :branch, 'master'
# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/home/dev/www/timebot'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true
set :sidekiq_config, "#{current_path}/config/sidekiq.yml"
set :sidekiq_env, 'production'

# Default value for :linked_files is []
append :linked_files, 'config/secrets.yml', 'config/database.yml', 'config/messages.yml', 'config/puma.rb', '.ruby-version', '.ruby-gemset', '.env'

# Default value for linked_dirs is []
append :linked_dirs, 'log', 'tmp/pids', 'tmp/sockets', 'tmp/cache', 'public/assets'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do
  before :finished, 'slack:slack_stop'
  after :finished, 'deploy:restart'
  after :finished, 'slack:slack_start'
end
