class Course < ApplicationRecord
    belongs_to :semesters, optional: true
    validates :name, presence: true
    validates :prefix, presence: true
    validates :number, presence: true
    validates :section, presence: true
end
