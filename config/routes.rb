EMondaiBeta::Application.routes.draw do

  # resources
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  # root
  root "static_pages#home"

  # Static Pages
  match 'about',   to: "static_pages#about",   via: 'get'
  match 'contact', to: "static_pages#contact", via: 'get'
  match 'help',    to: "static_pages#help",    via: 'get'
  match 'welcome', to: "static_pages#welcome", via: 'get'

  # Users
  match 'signup',  to: "users#new", via: 'get'

  # Sessions
  match 'signin',  to: "sessions#new", via: 'get'
  match 'signout',  to: "sessions#destroy", via: 'delete'

end
