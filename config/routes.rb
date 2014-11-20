Rails.application.routes.draw do

  root 'welcome#index'

  resources :user
    get '/login' => redirect('/auth/github'), as: :login
    get '/auth/github/callback', to:'sessions#create'
    get '/signout' => 'sessions#destroy', as: :signout
end
