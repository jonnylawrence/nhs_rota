Rails.application.routes.draw do

  get 'sessions/new'

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'doctors#new'
  post '/signup',  to: 'doctors#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
#  get '/rota/:id',  to: 'rota#index'
    resources :locations
    resources :doctors
  resources :rota do
      resources :microposts
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
