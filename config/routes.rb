Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/', to: 'todos#get_todos'
  post '/create', to: 'todos#create'
  put '/update/id', to: 'todos#update'
end
