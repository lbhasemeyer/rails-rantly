Rails.application.routes.draw do

  resources :rants
  resources :users

  get '/signup' => "users#new", as: :signup
  post '/signup' => "users#create"
  post '/sessions' => "sessions#create"
  get '/signout' => "sessions#destroy", as: :signout

end
