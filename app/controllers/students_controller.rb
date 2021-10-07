class StudentsController < ApplicationController
    before_action :authenticate_user!

    def index
        @students = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        student = Student.new(student_params)
        if student.save
        redirect_to :action => "index"
        else
        redirect_to :action => "new"
        end
    end

    private
    def student_params
        params.require(:student).permit(:name, :expert, :grade)
    end
end
