# frozen_string_literal: true
namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute("cd #{release_path} && bin/bot stop && bin/bot start")
    end
  end
end
