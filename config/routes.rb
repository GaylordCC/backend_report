Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/health', to: 'health#health'

  resources :companies, only: [:index, :show, :create, :update, :destroy]
  resources :visits, only: [:index, :show, :create, :update, :destroy]
  resources :reports, only: [:index, :show, :create, :update, :destroy] do
    post :generate
  end
  resources :detail_reports, only: [:create]
  resources :statistical_calculations, only: [:index, :show, :create, :update]
end
