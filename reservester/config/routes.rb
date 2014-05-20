Reservester::Application.routes.draw do  
  resources :resturants

  root 'resturants#index' 
   
end
