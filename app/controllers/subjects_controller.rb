class SubjectsController < ApplicationController
    before_action :authenticate_user!
    def index
        @subjects = Subject.all
    end

    def new
        @subject = Subject.new
    end

    def create
        subject = Subject.new(subject_params)
        if subject.save
        redirect_to :action => "index"
        else
        redirect_to :action => "new"
        end
    end

    private
    def subject_params
        params.require(:subject).permit(:opening_year, :subject_name, :date, :start_time, :target)
    end
end
