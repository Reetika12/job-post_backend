Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/jobs', to: 'jobs#index'
      post '/jobs', to: 'jobs#create'
      get '/jobs/:id', to: 'jobs#show'
      patch '/jobs/:id', to: 'jobs#update'
      delete '/jobs/:id', to: 'jobs#destroy'

      get '/users', to: 'users#index'
      post '/users', to: 'users#create'
      get '/users/:id', to: 'users#show'
      patch '/users/:id', to: 'users#update'
      delete '/users/:id', to: 'users#destroy'

      resources :login do
        collection do
          post :validate
        end
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
