class Plan < ApplicationRecord
    belongs_to :student
    belongs_to :students
    has_many :semesters
end