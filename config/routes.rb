Rails.application.routes.draw do
  root to:'home#index'
  get 'users', to:'users#users'
  get 'tasks/new', to:'tasks#new'
  get 'rushnames', to: 'rushnames#index'
  get 'rushnames/new', to: 'rushnames#new'
  post 'rushnames', to: 'rushnames#create'
end


# rails g model Task title:text comment:text value:integer
