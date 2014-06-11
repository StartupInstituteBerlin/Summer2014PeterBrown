Reservester10::Application.routes.draw do
  get 'reservations/index'
  get 'reservations/show'

  devise_for :owners
  resources :restaurants do
  	resources :reservations
end

  root 'restaurants#index'


end
