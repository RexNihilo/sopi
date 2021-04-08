class Plan < ApplicationRecord
    belongs_to :student, optional: true
    has_many :semesters
    has_many :courses, through: :semesters
end