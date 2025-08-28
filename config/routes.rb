Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
  
  # localhost:3000/posts/
  resources :posts do
    resources :comments, only: [:create]
  end
end