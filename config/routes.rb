Rails.application.routes.draw do
  post "posts/create" => "posts#create"
  get "posts/new" => "posts#new"
  get "posts/index" => "posts#index"

  get "/" => "home#top"
  get "/about" => "home#about"
end
