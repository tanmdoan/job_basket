Rails.application.routes.draw do

  get 'comments/index'

  get 'comments/show'

  get 'comments/new'

  get 'comments/create'

  get 'comments/edit'

  get 'comments/update'

  get 'comments/destroy'

  root 'welcome#index'
  resources :jobs

  get '/login'                => redirect('/auth/github'), as: :login
  get '/signout'              => 'sessions#destroy',       as: :signout
  get '/auth/github/callback' => 'sessions#create'
  get '/auth/failure'         => 'sessions#failure'
end
