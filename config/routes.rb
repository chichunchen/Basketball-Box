Rails.application.routes.draw do
  resources :teams

  root to: "home#index"
end
