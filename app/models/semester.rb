class Semester < ApplicationRecord
 belongs_to :user
 has_many :course_semesters
 has_many :courses, through: :course_semesters
 validates_presence_of :name
end