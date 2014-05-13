MuseumApp::Application.routes.draw do
  root "paintings#index"
  get 'search', to: 'paintings#search'
  resources :artists
  resources :paintings
  resources :museums
end
