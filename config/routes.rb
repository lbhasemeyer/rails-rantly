Rails.application.routes.draw do

  resources :rants
  resources :users

  get '/signup' => "registrations#new", as: :signup
  post '/signup' => "registrations#create"
  get '/signin' => "sessions#new", as: :signin
  post '/sessions' => "sessions#create"
  get '/signout' => "sessions#destroy", as: :signout

end
