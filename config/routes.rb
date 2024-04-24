Rails.application.routes.draw do
  resources :products
  root "products#index"
  resources :posts
  
  get 'index2' => 'posts#index2'
  get 'index3' => 'posts#index3'
  get 'index4' => 'posts#index4'
  get 'index5' => 'posts#index5test'
  get 'index6' => 'posts#index6'
  get 'test' => 'posts#test'
  get 't' => 'products#t'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
