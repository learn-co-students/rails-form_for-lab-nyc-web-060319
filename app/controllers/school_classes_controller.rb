class SchoolClassesController < ApplicationController

    def create
        @school_class = SchoolClass.create(title: params[:school_class_title], room_number: params[:school_class_room_number])
        redirect_to school_class_path(@school_class)
    end

    def index
        @school_classes = SchoolClass.all
    end

    def show
        @school_class = SchoolClass.find(params[:id])

    end

    def new

    end


    def edit
        @schoolclass = SchoolClass.find(params[:id])
    end

    def update
        @schoolclass = SchoolClass.find(params[:id])
        @schoolclass.update(title: params[:school_class_title], room_number: params[:school_class_room_number])
        # byebug
        redirect_to school_class_path(@schoolclass)
    end
    
end
