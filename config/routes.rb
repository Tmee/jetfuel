Rails.application.routes.draw do
  root 'urls#index'

  get '/:slug', to: 'urls#redirect'

  resources :urls, only: [:create]
end
