class PlansController < ApplicationController
  def index
    @plans = Plan.all
  end
  
  def show
    @student = Student.find(params[:student_id])
    @plan = Plan.find(params[:id])
  end
  
  def new
    @plan = Plan.new
  end

  def create
    @student = Student.find(params[:student_id])
    @plan = @student.plans.create(plan_params)
    redirect_to student_path(@student)
  end
  
  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])

    if @plan.update(plan_params)
      redirect_to @plan
    else
      render :edit
    end
  end
  
  def destroy
    @plan = Plan.find(params[:id])
    @plan.destroy
    
    @student = Student.find(params[:student_id])
    redirect_to student_path(@student)
    
  end
  
  private
    def plan_params
      params.require(:plan).permit(:nameofplan, :CWID)
    end
end
