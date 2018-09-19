Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope '/api' do
    scope '/v1' do
      scope 'projects' do
        get    '/'    => 'api/v1/projects#index'
        post   '/'    => 'api/v1/projects#create'
        get    '/:id' => 'api/v1/projects#show'
        put    '/:id' => 'api/v1/projects#update'
        delete '/:id' => 'api/v1/projects#destroy'
      end
    end
  end
end
