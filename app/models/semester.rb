class Semester < ApplicationRecord
    belongs_to :plan, optional: true
    has_many :courses
end