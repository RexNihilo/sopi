class PlansController < ApplicationController
  def index
    @plans = Plan.all
  end
  
  def show
    @plan = Plan.find(params[:id])
  end
  
  def new
    @plan = Plan.new
  end

  def create
    @student = Student.find(params[:student_id])
    @plan = @student.plans.create(plan_params)
    #flash.alert = "plan added!"
    redirect_to student_path(@student)
  end
  
  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])

    if @plan.update(plan_params)
      flash.alert = "plan edited"
      redirect_to @plan
      
    else
      render :edit
    end
  end
  
  def destroy
    @plan = Plan.find(params[:id])
    @plan.destroy
    
    @student = Student.find(params[:student_id])
    flash.alert = "plan destroyed"
    redirect_to student_path(@student)
    
  end
  
  private
    def plan_params
      params.require(:plan).permit(:nameofplan, :CWID, :semester1, :course1a, 
      :course1b, :course1c, :course1d, :semester2, :course2a, :course2b, :course2c, 
      :course2d, :semester3, :course3a, :course3b, :course3c, :course3d, :semester4, 
      :course4a, :course4b, :course4c, :course4d, :semester5, :course5a, :course5b, 
      :course5c, :course5d, :semester6, :course6a, :course6b, :course6c, :course6d, 
      :semester7, :course7a, :course7b, :course7c, :course7d, :semester8, :course8a, 
      :course8b, :course8c, :course8d, :semester9, :course9a, :course9b, :course9c, 
      :course9d, :semester10, :course10a, :course10b, :course10c, :course10d, :semester11, 
      :course11a, :course11b, :course11c, :course11d, :semester12, :course12a, :course12b, 
      :course12c, :course12d)
    end
end
