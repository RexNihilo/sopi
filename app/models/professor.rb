class Professor < ApplicationRecord
    has_many :students
    belongs_to :programdirector
    #belongs_to :users
end
