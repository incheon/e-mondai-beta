EMondaiBeta::Application.routes.draw do

  root "static_pages#home"
  
  match 'about',   to: "static_pages#about",   via: 'get'
  match 'contact', to: "static_pages#contact", via: 'get'
  match 'help',    to: "static_pages#help",    via: 'get'
  match 'welcome', to: "static_pages#welcome", via: 'get'

end
