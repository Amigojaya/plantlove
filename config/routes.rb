Rails.application.routes.draw do

  get 'quotes',to: 'quotes#index',as: 'quotes'
  get 'quotes/edit/:id',to: 'quotes#quote_edit', as: 'quotes_edit'
  patch 'quotes/update/:id',to: 'quotes#quote_update'
  post 'quotes/create', to: 'quotes#quote_create'
  delete 'quotes/delete/:id', to: 'quotes#destory', as: "quotes_delete"

  get 'plantdetails/index'
  get 'plantdetails/new'
  get 'plantdetails/edit'
  get 'plantdetails/show'
  get 'plantdetails/manage', to: 'plantdetails#manage', as: 'manage_details'

  get '/about_me', to: 'home#about_me', as: 'about_me'
  get '/how_it_works', to: 'home#how_it_works', as: 'how_it_works'

  get '/admin', to: 'home#admin', as: 'admin'
  get '/progress', to: 'home#progress', as: 'progress'

  root 'home#index'
  get 'home/dashboard'

  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  resources :plantdetails
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
