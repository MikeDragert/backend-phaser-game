Rails.application.routes.draw do
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "posts#index"
  resources :items, only: [:index]
  resources :saves, only: [:index]
  resources :players, only: [:index]
  resources :achievements, only: [:index]
  resources :highscores, only: [:index]
  resources :player_achievements, only: [:index]
  resources :player_items, only: [:index]
    
end
