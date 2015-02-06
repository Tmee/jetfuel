Rails.application.routes.draw do
  root 'urls#index'

  get 'search', to: 'search#search'
  resources :urls, only: [:create, :show]
end
