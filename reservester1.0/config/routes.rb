Reservester10::Application.routes.draw do
  resources :reservations

  devise_for :owners
  resources :restaurants

  root 'restaurants#index'


end
