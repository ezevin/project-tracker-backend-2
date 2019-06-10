Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :projects
      resources :materials
      resources :user_materials
      resources :project_materials
      resources :researches
      resources :to_do_lists

      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'

      # post '/materialproject', to: 'materials#addtoproject'
    end
  end
end
