Rails.application.routes.draw do
  resources :teams do
  	resources :players
  	resources :games
  end

  root "home#index"
end
