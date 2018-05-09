Rails.application.routes.draw do
  get 'favorites/index'
  get 'favorites/new'
  get 'favorites/create'
  get 'favorites/show'
  get 'favorites/edit'
  get 'favorites/update'
  get 'favorites/destroy'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 root to: "users#index"

end
