class StudentsController < ApplicationController
    def index
        student=Student.all
        render json: student
    end

    def grades
        grades=Student.all.sort_by {|t| t.grade}.reverse
        render json: grades
    end

    def highest_grade
        grades=Student.all.sort_by {|t| t.grade}.reverse
        render json: grades[0]
    end
end
