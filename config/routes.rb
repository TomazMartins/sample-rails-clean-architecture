Rails.application.routes.draw do
  post '/transferences', to: 'transferences#create', as: :create_transferences

  get '/accounts/:id', to: 'accounts#show', as: :account
  get '/accounts', to: 'accounts#index', as: :accounts
end
