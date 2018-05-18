Rails.application.routes.draw do
  resources :favorites
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
 root to: "users#index"

end
