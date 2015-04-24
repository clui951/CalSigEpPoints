Rails.application.routes.draw do
  get 'organizations/new'

  get 'organizations/create'

  get 'organizations/show'

  get 'organizations/index'
  get 'sessions/create'

  get 'sessions/destroy'


  # get 'auth/:provider', to: 'sessions#create'
  get 'auth/:provider/callback', to: 'sessions#create' 
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

  root to: "home#index"
  get 'user', to:'users#user'
  get 'user/tasks', to:'users#usertasks'

  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to:'tasks#new'
  get 'tasks/:id', to: 'tasks#show', as: :task
  post 'tasks', to: 'tasks#create'

  get 'rushnames', to: 'rushnames#index'
  get 'rushnames/new', to: 'rushnames#new'
  get 'rushnames/:id', to: 'rushnames#show', as: :rushname
  post 'rushnames', to: 'rushnames#create'

  get 'organizations', to: 'organizations#index'
  get 'organizations/new', to: 'organizations#new'
  get 'organizations/:id', to: 'organizations#show', as: :organization
  post 'organizations/index', to: 'organizations#create'

end


# rails g model Task title:text comment:text value:integer
