class StudentsController < ApplicationController

    before_action :find_student, only:[:show,:edit,:update]


    def index
        @students = Student.all
    end

    def show

    end

    def edit

    end

    def create
        @student = Student.create(students_params)
        redirect_to @student
    end

    def new
        @student = Student.new
    end

    def update

        @student.update(students_params)
        redirect_to @student
    end


    private

    def find_student
        @student = Student.find(params[:id])
    end

    def students_params
        params.require(:student).permit(:first_name,:last_name)
    end


end
