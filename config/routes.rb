Rails.application.routes.draw do
  get 'favorites/index'

  get 'sessions/new'

  get 'comments/index'

  root 'pages#index'
  get 'pages/help'

  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources 'users'
  resources 'topics'
  resources 'comments'
  post '/favorites', to: 'favorites#create'
  post '/comments', to: 'comments#create'
  get '/favorites', to: 'favorites#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
