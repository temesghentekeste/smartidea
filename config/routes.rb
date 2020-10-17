Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations'}
  root "pages#index"
  resources :posts
  get '/home', to: 'pages#home'
  get 'user/:id', to: 'pages#profile', as: :profile
  get 'explore', to: "pages#explore"  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
