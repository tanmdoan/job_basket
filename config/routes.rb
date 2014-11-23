Rails.application.routes.draw do

  root 'welcome#index'
  resources :jobs, except:[:create, :destroy]

  get '/login'                => redirect('/auth/github'), as: :login
  get '/signout'              => 'sessions#destroy',       as: :signout
  get '/auth/github/callback' => 'sessions#create'
end
