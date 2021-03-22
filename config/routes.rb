Rails.application.routes.draw do
  
  resources :notes
  #these constraints are for when we figure out the associations with users to students, programdirectors, professors/advisors
  
   # constraints Clearance::Constraints::SignedIn.new { |user| user.programdirectors? } do
   # root to: "programdirectors/dashboards#show", as: :programdirectors_root
  #end

 # constraints Clearance::Constraints::SignedIn.new { |user| user.professors? } do
  #  root to: "professors/dashboards#show", as: :professors_root
 # end


 # constraints Clearance::Constraints::SignedIn.new { |user| user.students? } do
  #  root to: "students/dashboards#show", as: :students_root
 # end

  
  resources :comments
  resources :discussions
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