Rails.application.routes.draw do
  get 'passwords/edit'
  get 'passwords/update'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'registrations/new'
  get 'registrations/create'
  root "welcome#index"
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create', as: 'log_in'
  delete 'logout', to: 'sessions#destroy'
  get 'password', to: 'passwords#edit', as: 'edit_password'
  patch 'password', to: 'passwords#update'
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'

  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  resources :articles do 
    resources :comments
  end 

  
end
