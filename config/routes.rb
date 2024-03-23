Rails.application.routes.draw do
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "posts#index"
  resources :items, only: [:index]
  resources :saves, only: [:index]
  resources :players, only: [:index, :update]
  resources :achievements, only: [:index]
  resources :highscores, only: [:index]
  resources :player_achievements, only: [:index]
  resources :player_items, only: [:index]
  
  # Players Post Routes
  post '/players/:player_id/saves', to: 'saves#create'
  post '/players/:player_id/player_items', to: 'player_items#create'
  post '/players/:player_id/player_achievements', to: 'player_achievements#create'
  post '/players/:player_id/highscores', to: 'highscores#create'
  post '/players', to: 'players#create'
  post '/players/:player_id/achievements', to: 'achievements#create'
  post '/players/:player_id/items', to: 'items#create'
  post '/players/:player_id/saves', to: 'saves#create'
  post '/players/:player_id/player_items', to: 'player_items#create'

  # Login and Register Routes
  post '/login', to: 'sessions#create'
 
end
