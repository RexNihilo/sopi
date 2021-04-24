class User < ApplicationRecord
  include Clearance::User
  validates_presence_of :email, :encrypted_password
  has_many :users, :class_name => 'Student', :foreign_key => 'student_id'
  has_many :professors, :class_name => 'Professor', :foreign_key => 'professor_id'
  has_many :semesters
  
  ROLES = ['Student', 'Professor', 'Director', 'Admin']

  enum role: ["student", "professor", "director", "admin"]
  
  private
  
  def user_params
    params.require(:user).permit(
      :email, 
      :password, 
      :role
    )
  end
  
  def self.students
    User.where(role: "student")
  end
  
  def self.professors
    User.where(role: "professor")
  end
end
