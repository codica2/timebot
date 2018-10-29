Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :api do
    namespace :v1 do
      namespace :auth do
        resources :sessions, only: [:create]
      end
      resources :projects, except: [:new, :edit] do
        collection do
          get :search
        end
      end
      resources :time_entries, except: [:new, :edit]
      resources :users, except: [:new, :edit] do
        get :search, on: :collection
      end
      resources :teams, except: [:new, :edit]
      resources :holidays, except: [:new, :edit]
      resources :absences, except: [:new, :edit]
      resources :admins, except: [:new, :edit]

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
    end
  end
end
