Rails.application.routes.draw do
  get 'plantdetails/index'
  get 'plantdetails/new'
  get 'plantdetails/edit'
  get 'plantdetails/show'
  get 'plantdetails/manage', to: 'plantdetails#manage', as: 'manage_details'
  get '/about_me', to: 'home#about_me', as: 'about_me'
  get '/how_it_works', to: 'home#how_it_works', as: 'how_it_works'
  root 'home#index'
  get 'home/dashboard'
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  resources :plantdetails
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
