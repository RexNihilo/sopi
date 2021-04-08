Rails.application.routes.draw do
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
  
  resources :notes
  
  resources :comments
  
  resources :discussions
  
  resources :programdirectors
  
  #adds a path under professors: example: https://myappname.com/professors/professorid/student/studentsid
  resources :professors do 
   resources :students
  end
  
  resources :plans
  
  resources :welcome
  
  #adds a path under students: example: https://myappname.com/students/studentid/plan/planid
  resources :students do
   resources :plans
  end
  
  resources :semesters
  
  resources :courses

  mount RailsAdmin::Engine => "/admin", as: "rails_admin"
  
  constraints Clearance::Constraints::SignedIn.new { |user| user.admin? } do
    root to: "landingpage#show", as: :admin_root
  end

  constraints Clearance::Constraints::SignedIn.new do
    root to: "landingpage#show", as: :signed_in_root
  end

  constraints Clearance::Constraints::SignedOut.new do
    root to: "landingpage#show"
  end

end