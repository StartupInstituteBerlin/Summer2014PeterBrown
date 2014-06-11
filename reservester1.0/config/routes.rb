Reservester10::Application.routes.draw do
  resources :categories

  get 'reservations/index'
  get 'reservations/show'

  devise_for :owners
  resources :restaurants do
  	resources :reservations
end

  root 'restaurants#index'


end
