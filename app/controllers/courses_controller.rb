class CoursesController < ApplicationController
# before action Elgazar notes 
  before_action :require_login 
  #this could be used to protect 
  def index
    @courses = Course.all
  end
  
  def show
    @course = Course.find(params[:id])
  end
  
  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to @course
    else
      render :new
    end
  end
  
  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])

    if @course.update(course_params)
      redirect_to @course
    else
      render :edit
    end
  end
  
  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    redirect_to root_path
  end
  
  private
    def course_params
      params.require(:course).permit(:name, :number, :section, :prefix)
    end
end
