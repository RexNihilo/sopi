class User < ApplicationRecord
  include Clearance::User
  validates_presence_of :email, :encrypted_password
  has_many :comments
  has_many :semesters
  # has_many :users, :class_name => 'Student', :foreign_key => 'student_id'
  # has_many :advisors, :class_name => 'Professor', :foreign_key => 'advisor_id'
  
  ROLES = ['Student', 'Professor', 'Director', 'Admin']

  enum role: ["Student", "Professor", "Director", "Admin"]
  
  def self.students
    User.where(role: "Student")
  end
  
  def advisor
    User.find(self.advisor_id)
  end
  
  def students
    User.where(advisor_id: self.id)
  end
  
  def student?
    self.role == "Student"
  end
  
  def admin?
    self.role == "Admin"
  end
  
  def self.professors
    User.where(role: "Professor")
  end
  
  private
  
  def user_params
    params.require(:user).permit(
      :email, 
      :password, 
      :role
    )
  end
end
