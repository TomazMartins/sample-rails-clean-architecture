Rails.application.routes.draw do
  post '/transferences', to: 'transferences#create', as: :create_transferences
end
