Rails.application.routes.draw do
  root 'urls#index'
  get 'redirect', to: 'urls#redirect'
  get 'search', to: 'search#search'
  resources :urls, only: [:create, :show]
end
