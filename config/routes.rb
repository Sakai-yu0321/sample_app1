Rails.application.routes.draw do
  get "signup" => "users#new"
  post "users/create" => "users#create"
  get "login" => "users#login_form"
  post "login" => "users#login"
  get "users/:id" => "users#show"

  post "posts/create" => "posts#create"
  get "posts/new" => "posts#new"
  get "posts/index" => "posts#index"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  get "posts/:id/destroyreally" => "posts#destroy_really?"
  post "posts/:id/destroy" => "posts#destroy"
  get "posts/:id" => "posts#show"

  get "/" => "home#top"
  get "/about" => "home#about"
end
