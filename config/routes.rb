Rails.application.routes.draw do
  get "probrems/index" => "probrems#index"
  get "probrems/:id" => "probrems#show"
  get "users" => "users#index"
  get "/" => "home#top"
  get "probrem" => "home#probrem"
  get "ranking" => "home#ranking"
  get "signup" => "users#new"
  post "users/create" => "users#create"
  get "login" => "users#login_form"
  post "login" => "users#login"
end