Reservester::Application.routes.draw do
  get '/owner_dashboard' => 'users#owner_dashboard', :as => :owner_dashboard
  get '/patron_dashboard' => 'users#patron_dashboard', :as => :patron_dashboard
  post '/reservations/:id', to: "reservations#confirm"

  devise_for :users
  resources :restaurants do
    resources :reservations
    resources :stars, :only => ['new', 'create']
    put :star, on: :member
  end
  resources :categories
  root 'restaurants#index'

end
