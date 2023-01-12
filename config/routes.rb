Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/health', to: 'health#health'

  resources :companies, only: [:index, :show, :create, :update]
  resources :visits, only: [:index]
end
