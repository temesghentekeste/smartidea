Rails.application.routes.draw do
  root "pages#index"

  get 'home', to: 'pages#home'
  get 'profile' => 'pages#profile'
  get 'explore', to: "pages#explore"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
