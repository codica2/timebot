namespace :deploy do

  desc "Restart Slack client"
  task :slack_start do
    on roles([:app]) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :bundle, "exec rake slack:start_bot RAILS_ENV=production"
        end
      end
    end
  end


  desc "Restart Slack client"
  task :slack_stop do
    on roles([:app]) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :bundle, "exec rake slack:stop_bot RAILS_ENV=production"
        end
      end
    end
  end
end