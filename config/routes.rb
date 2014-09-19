Rails.application.routes.draw do
  get 'choose_team/index'

  resources :teams do
  	resources :players
  	resources :games do
  		resources :statistics
  	end
  end

  root "home#index"
end
