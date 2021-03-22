class User < ApplicationRecord
  include Clearance::User
   #use this with bycrpyt (has_secure_password)S
end
