Rails.application.routes.draw do

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
    end
  end
end
