class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.order(grade: :desc)
        render json: students
    end

    def highest_grade
        highest = Student.order(grade: :desc).first
        render json: highest
    end
end
