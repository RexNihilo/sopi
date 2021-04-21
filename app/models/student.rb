class Student < ApplicationRecord
    #belongs_to :users
    has_many :plans
    belongs_to :professor
    #has_many :semesters, through: :plans
   # has_many :courses, through: :semesters
end
