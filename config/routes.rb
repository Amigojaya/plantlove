Rails.application.routes.draw do
  get 'plantdetails/index'
  get 'plantdetails/new'
  get 'plantdetails/edit'
  get 'plantdetails/show'
  root 'home#index'
  get 'home/dashboard'
  devise_for :users
  resources :plantdetails
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
