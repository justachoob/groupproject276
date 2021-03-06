Rails.application.routes.draw do



  get 'class_battles/load'

  get 'skills/new'

  get 'skills/create'

  get 'classes/select'
  post '/enroll', to: 'classes#enroll'

  resources :profiles
  root 'sessions#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 	'/admin', to: 'admin#show'
  resources :courses
  resources :users
  resources :profiles
  resources :skills
  resources :profimon_skills
  resources :badges
  get '/about', to: 'sessions#about'
  get 'profiles/grad/:profile', to: 'profiles#grad'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
