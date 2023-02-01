Rails.application.routes.draw do
  # get 'users/index'
  devise_for :users

  post '/generate_users', to: 'generate_users#index'

  root to: "home#index"
end
