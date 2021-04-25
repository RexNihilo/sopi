class Course < ApplicationRecord
    has_many :course_semesters
    has_many :courses, through: :course_semesters
    validates :name, presence: true
    validates :dept, presence: true
    validates :number, presence: true
    validates :description, presence: true
end
