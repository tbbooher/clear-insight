Rails.application.routes.draw do
  resources :moodys_estimates
  get '/about' => 'pages#about'

  resources :users
  resources :voting_wizzard
  root to: 'visitors#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
