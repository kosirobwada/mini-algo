Rails.application.routes.draw do
  get "/" => "home#top"
  get "/probrem" => "home#probrem"
  get "/ranking" => "home#ranking"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
