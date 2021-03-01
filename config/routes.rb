Rails.application.routes.draw do
  resources :plans
  resources :welcome
  resources :students
  resources :semesters
    root "courses#index"
    resources :courses

end