class SchoolClassesController < ApplicationController

    def create
        @school_class = SchoolClass.create(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
        redirect_to school_class_path(@school_class)
    end

    def index
        @school_classes = SchoolClass.all
    end

    def show

    end

    def new

    end


    def edit

    end
    
end
