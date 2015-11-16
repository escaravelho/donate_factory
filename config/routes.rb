Rails.application.routes.draw do
  root 'institution#index'

  get '/institutions/search', to: 'institution#search', as: 'search'
end
