Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/auth/google_oauth2', as: :google_login
  get '/auth/google_oauth2/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'

  resources :posts, only: [:index, :new, :create, :show]
end
