class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end
    
    def edit
        @user = User.find(params[:id])
    end
    
    def update
        @user = User.find(params[:id]) 
        @user.update(update_params)
        redirect_to root_path
    end
    
    def update_params
        params.require(:user).permit(
            :name,
            :role, 
            :cwid, 
            :concentration,
            :advisor_id
        )
    end
end