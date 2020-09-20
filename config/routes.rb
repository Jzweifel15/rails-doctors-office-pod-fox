Rails.application.routes.draw do
  root 'appointments#index'

  get '/appointments', to: 'appointments#index'
  get 'appointments/new', to: 'appointments#new', as: 'create_appointment'
  post 'appointments', to: 'appointments#create'
  get '/appointments/:id', to: 'appointments#show', as: 'appointment'
  get '/appointments/:id/edit', to: 'appointments#edit', as: 'edit_appointment'
  patch '/appointments/:id', to: 'appointments#update'
  delete 'appointments/:id', to: 'appointments#destroy'

  get '/doctors', to: 'doctors#index', as: 'doctors'
  get '/doctors/new', to: 'doctors#new', as: 'new_doctor'
  post '/doctors', to: 'doctors#create'
  get '/doctors/:id', to: 'doctors#show', as: 'doctor'
end
