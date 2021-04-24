class Semester < ApplicationRecord
 validates_presence_of :name, :course1, :course2, :course3, :course4
 belongs_to :user
end