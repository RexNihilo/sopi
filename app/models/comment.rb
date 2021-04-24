class Comment < ApplicationRecord
  belongs_to :student, class_name => 'User'
  belongs_to :professor, class_name => 'User'
end
