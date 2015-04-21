Rails.application.routes.draw do
  root to:'home#index'
  get 'users', to:'users#users'
end


# rails g model Task title:text comment:text value:integer 
