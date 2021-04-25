class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end
    
    def new
        if params[:semester_id]
            @semester = Semester.find(params[:semester_id])
            @course = @semester.courses.new
        else
            @course = Course.new
        end
    end
    
    def create
        if params[:semester_id]
            CourseSemester.create(semester_id: params[:semester_id], course_id: params[:course][:course_id])
            redirect_to semester_path(params[:semester_id])
        else
        end
    end
    
    def destroy
        link = CourseSemester.where(semester_id: params[:semester_id], course_id: params[:id]).first
        link.destroy
        redirect_to semester_path(params[:semester_id])
    end
end