Rails.application.routes.draw do
  resources :probrems, only: %i[index show]
  post "relationships" => "relationships#create"
  post "destroy_relationships" => "relationships#destroy"
  get "relationships" => "probrems#index"
  get "users" => "users#index"
  get "/" => "home#top"
  get "ranking" => "home#ranking"
  get "signup" => "users#new"
  post "users/create" => "users#create"
  get "login" => "users#login_form"
  post "login" => "users#login"
end