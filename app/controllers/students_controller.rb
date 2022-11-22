class StudentsController < ApplicationController

    def index
students = Student.all
render json: students
    end

    def show 
     students = Student.all.order("grade DESC")
     render json: students
    end

    def grades
    student = Student.all.order("grade DESC").first
    render json: student
    end
end
