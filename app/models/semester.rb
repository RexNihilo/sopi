class Semester < ApplicationRecord
belongs_to :plans 
has_many :courses

end