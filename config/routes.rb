Rails.application.routes.draw do
  resources :user_gears, only: :create
  resources :gears, only: [:index]
  resources :users, only: [:create, :index, :destroy]
  # get '/gear', to: 'gears#index'
  get '/formatted_gears', to: 'gears#check_gear_status'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
