class StudentsController < ApplicationController

  def index
    require "pry"; binding.pry
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.id = params[:id]

    @student.save

    redirect_to students_path(@students.id)
  end

  def show
    redirect_to students_path(@students)
  end

  def edit
  end

  private

  def student_params
    params.require(:student).permit(:name)
  end


end
