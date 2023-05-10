Rails.application.routes.draw do
  
  root "user#index" 
  get "/posts/:id", to:"posts#give"
  post "/users", to: "user#creation"
  get "/users/destroy", to: "user#destroy"
  get "/users/new", to: "user#add"
  get "/users/:id/give", to: "user#give"
  get "/users/edit", to: "user#edit"

   resources :posts
  post "/posts", to: "post#creation", as: 'user'
  get "/posts/index", to: "post#index"
  get "/posts/new", to: "post#add"
  # get "/posts/:id", to: "post#give"
  get "/posts/edit", to: "post#edit"
  get "/posts/:id/give", to: "post#give"
  
end







