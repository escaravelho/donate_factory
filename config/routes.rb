Rails.application.routes.draw do
  root 'institutions#index'
  get '/institutions/search', to: 'institutions#search', as: 'search'
  resources :institutions, only: [:new, :create, :show, :edit, :update]
end
