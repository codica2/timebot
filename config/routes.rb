Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope '/api' do
    scope '/v1' do
      scope 'projects' do
        get    '/'    => 'api/v1/projects#index'
        get    '/all' => 'api/v1/projects#all'
        post   '/'    => 'api/v1/projects#create'
        get    '/:id' => 'api/v1/projects#show'
        put    '/:id' => 'api/v1/projects#update'
        delete '/:id' => 'api/v1/projects#destroy'
      end

      scope 'time_entries' do
        get    '/'    => 'api/v1/time_entries#index'
        post   '/'    => 'api/v1/time_entries#create'
        get    '/:id' => 'api/v1/time_entries#show'
        put    '/:id' => 'api/v1/time_entries#update'
        delete '/:id' => 'api/v1/time_entries#destroy'
      end

      scope 'users' do
        get '/' => 'api/v1/users#index'
      end

      scope 'dashboard' do
        get '/' => 'api/v1/dashboard#index'
      end

    end
  end
end
