Rails.application.routes.draw do
  devise_for :users
  
  get 'choose_team/index'

  resources :teams do
  	resources :players
  	resources :games
  end

  root "home#index"
end
