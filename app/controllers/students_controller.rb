class StudentsController < ApplicationController

    def create
        @student = Student.create(first_name: params[:student_first_name], last_name: params[:student_last_name])
        redirect_to student_path(@student)
    end

    def show
        # byebug
        @student = Student.find(params[:id])
    end

    def index
        @students = Student.all
        # render 'index'
    end

    def new

        # redirect_to student_path(Student.last)
    end

    def update

    end


    def edit
        @student = Student.find(params[:id])
    end
end