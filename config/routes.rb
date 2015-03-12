Rails.application.routes.draw do

  resources :rants
  resources :users

  get '/sign-up' => "registrations#new", as: :signup
  post '/sign-up' => "registrations#create"
  get '/sign-in' => "sessions#new", as: :signin
  post '/sign-in' => "sessions#create"
  get '/sign-out' => "sessions#destroy", as: :signout

end
