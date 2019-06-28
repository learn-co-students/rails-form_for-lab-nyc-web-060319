class StudentsController < ApplicationController

    def create
        @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])

    end

    def show
        @student = Student.find(params[:id])
    end

    def index

    end

    def new

        redirect_to student_path(Student.last)
    end


    def edit

    end
end