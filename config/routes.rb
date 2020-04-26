Rails.application.routes.draw do
  get 'home/index'
  get 'home/dashboard'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
