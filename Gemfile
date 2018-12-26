# frozen_string_literal: true
source 'https://rubygems.org'

gem 'rails', '~> 5.0.0'
gem 'pg'
gem 'puma', '~> 3.0'


gem 'slack-ruby-client'
gem 'eventmachine'
gem 'faye-websocket'
gem 'whenever', require: false
gem 'inherited_resources', github: 'activeadmin/inherited_resources'
gem 'dotenv-rails'
gem 'ruby-trello'
gem 'active_model_serializers'
gem 'rack-cors', require: 'rack/cors'
gem 'kaminari'

# Auth
gem 'jwt'
gem 'bcrypt'

# Background processing
gem 'sidekiq'
gem 'redis'
gem 'tzinfo'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'database_cleaner'
  gem 'capistrano', '~> 3.6'
  gem 'capistrano-bundler', '>= 1.1.0'
  gem 'capistrano-rails', '~> 1.2'
  gem 'capistrano-rvm'
  gem 'capistrano3-puma'
  gem 'capistrano-sidekiq'
  gem 'pry'
  gem 'rspec-rails'
  gem 'faker', '~> 1.9', '>= 1.9.1'
  gem 'factory_bot_rails'
  gem 'dox', require: false
  gem 'rubocop', require: false
  gem 'overcommit'
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
