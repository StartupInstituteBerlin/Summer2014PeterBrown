Reservester::Application.routes.draw do  
  resources :resturants

  root 'welcome#index' 
   
end
