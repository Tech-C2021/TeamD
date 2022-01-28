Rails.application.routes.draw do
  resources :mones
  resources :zer0s
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/', to: 'top#index'

  #/users/1 
  #ユーザー情報の表示
  get '/users', to: 'users#index' , as: "users"
  get '/users/:id', to: 'users#show' , as: "user"

  #get '/zer0s', to: 'zer0#index'
end
