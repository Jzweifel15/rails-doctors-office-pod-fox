Rails.application.routes.draw do
  get '/appointments', to: 'appointments#index'
  get 'appointments/new', to: 'appointments#new', as: 'create_appointment'
  post 'appointments', to: 'appointments#create'
  get '/appointments/:id', to: 'appointments#show', as: 'appointment'
  get '/appointments/:id/edit', to: 'appointments#edit', as: 'edit_appointment'
  patch '/appointments/:id', to: 'appointments#update'
  delete 'appointments/:id', to: 'appointments#destroy'

  root 'appointments#index'
end
