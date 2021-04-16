class ProgramdirectorsController < ApplicationController
  def index
    @professor = Professor.all
    @student = Student.all
     @course = Course.all
  end
  
  def show
    @professor = Professor.find(params[:id])
    @student= Student.find(params[:id])
    @course = Course.find(params[:id])
  end
  
  def new
    @course = Course.new
    @student = Student.new
    @professor = Professor.new
  end

  def create
   @course = Course.new(course_params)

    if @course.save
      redirect_to @course
    else
      render :new
    end
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: "Student was successfully created." }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
    @professor = Professor.new(professor_params)

    respond_to do |format|
      if @professor.save
        format.html { redirect_to @professor, notice: "Professor was successfully created." }
        format.json { render :show, status: :created, location: @professor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @professor.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def edit
    @programdirector = Programdirector.find(params[:id])
  end

  def update
    @programdirector = Programdirector.find(params[:id])

    if @programdirector.update(programdirector_params)
      redirect_to @programdirector
    else
      render :edit
    end
  end
  
  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    redirect_to root_path
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: "Student was successfully destroyed." }
      format.json { head :no_content }
    end
    @professor.destroy
    respond_to do |format|
      format.html { redirect_to professors_url, notice: "Professor was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
  private
    def programdirector_params
      params.require(:programdirector).permit(:Name, :CWID)
    end
end
