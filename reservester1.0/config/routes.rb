Reservester10::Application.routes.draw do
  resources :categories
  get 'categories/index'
  get 'reservations/index'
  get 'reservations/show'

  devise_for :owners
  resources :restaurants do
  	resources :reservations
end
	resources :categories
	root 'restaurants#index'


end
