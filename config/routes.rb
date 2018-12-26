Rails.application.routes.draw do
  require "sidekiq/web"
  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(username), ::Digest::SHA256.hexdigest(ENV["SIDEKIQ_USERNAME"])) &
      ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(password), ::Digest::SHA256.hexdigest(ENV["SIDEKIQ_PASSWORD"]))
  end if Rails.env.production?
  mount Sidekiq::Web, at: "/sidekiq"

  namespace :api do
    namespace :v1 do
      namespace :auth do
        resources :sessions, only: [:create]
      end
      resources :projects, except: [:new, :edit] do
        collection do
          get :search
          delete :delete_multiple
        end
      end
      resources :users, except: [:new, :edit] do
        collection do
          get :search
          post :sync_users
          delete :delete_multiple
        end
      end
      resources :time_entries, except: [:new, :edit] do
        delete :delete_multiple, on: :collection
      end
      resources :teams, except: [:new, :edit] do
        delete :delete_multiple, on: :collection
      end
      resources :holidays, except: [:new, :edit] do
        delete :delete_multiple, on: :collection
      end
      resources :absences, except: [:new, :edit] do
        delete :delete_multiple, on: :collection
      end
      resources :admins, except: [:new, :edit] do
        delete :delete_multiple, on: :collection
      end

      scope :dashboard do
        get '/' => 'dashboard#index'
      end

      scope :reports, module: :reports do
        resources :estimation_reports, only: [:index]
        resources :time_reports, only: [:index]
        resources :user_reports, only: [:index] do
          collection do
            get :worked_time
            get :absence
          end
        end
      end

      scope :slack, module: :slack do
        post '/submission' => 'slack#submission'
        post '/command' => 'slack#command'
      end
    end
  end
end
