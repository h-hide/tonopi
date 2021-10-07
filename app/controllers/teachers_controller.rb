class TeachersController < ApplicationController
    def index
        @teachers = Teacher.all
    end

    def new
        @teacher = Teacher.new
    end

    def create
        teacher = Teacher.new(teacher_params)
        if teacher.save
        redirect_to :action => "index"
        else
        redirect_to :action => "new"
        end
    end

    private
    def teacher_params
        params.require(:teacher).permit(:name, :belonging)
    end
end
