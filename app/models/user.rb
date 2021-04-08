class User < ApplicationRecord
  include Clearance::User
      
  private

  def user_params
    params.require(:user).permit(
      :email, 
      :password, 
      :role, 
      :admin,
      :student,
      :professor,
      :programdirector,
      :first_name, 
      :last_name, 
      #:CWID
    )
  end
end
