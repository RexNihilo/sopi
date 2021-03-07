Rails.application.routes.draw do
  
  root "courses#index"
  
  resources :programdirectors
  
  resources :professors
  
  resources :welcome
  
  resources :students do
    resources :plans
  end
  
  resources :semesters
  
  resources :courses

end