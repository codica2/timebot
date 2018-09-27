namespace :slack do

  desc 'Start Slack client'
  task :slack_start do
    on roles(:app) do
      within release_path do
        execute :bundle, "exec rake slack:start_bot RAILS_ENV=production 2>&1 >> log/production.log &"
      end
    end
  end

  desc "Stop Slack client"
  task :slack_stop do
    on roles([:app]) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :bundle, 'exec rake slack:stop_bot RAILS_ENV=production'
        end
      end
    end
  end

  desc "Restart Slack client"
  task :slack_restart do
    on roles(:all) do
      if test("[ -f #{deploy_to}/current/tmp/pids/bot.pid ]")
        run_locally do
          invoke 'slack:slack_stop'
          invoke 'slack:slack_start'
        end
      else
        run_locally do
          invoke 'slack:slack_start'
        end
      end
    end
  end
end
