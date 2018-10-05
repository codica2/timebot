Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :api do
    namespace :v1 do
      namespace :auth do
        resources :sessions, only: [:create]
      end
      resources :projects, except: [:edit] do
        collection do
          get :search
        end
      end
      resources :time_entries, except: [:edit]
      resources :users, except: [:edit] do
        get :search, on: :collection
      end
      resources :teams, except: [:edit]
      resources :holidays, except: [:edit]
      resources :absences, except: [:edit]

      scope :dashboard do
        get '/' => 'dashboard#index'
      end

      scope :reports, module: :reports do
        resources :estimation_reports, only: [:index]
        resources :time_reports, only: [:index]
      end
    end
  end
end
