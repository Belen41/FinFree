Rails.application.routes.draw do
  devise_for :users
  resources :users do
  	resources :deposits
  	resources :expenses
  end
  get '/', to: 'sites#show'
  get 'profile', to: 'users#profile'
  root to: 'users#profile'
end
