Rails.application.routes.draw do
  get '/appointments', to: 'appointments#index'
  get '/appointments/:id', to: 'appointments#show', as: 'appointment'
  get '/appointments/:id/edit', to: 'appointments#edit', as: 'edit_appointment'
  patch '/appointments/:id', to: 'appointments#update'
end
