Rails.application.routes.draw do
    
  resources :students
    root "courses#index"
    resources :courses
end
