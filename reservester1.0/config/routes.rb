Reservester10::Application.routes.draw do
  resources :restaurants

  root 'restaurants#index'


end
