class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.id = params[:id]

    @student.save

    redirect_to students_path(@students)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
  end

  def update
    @student.update(student_params)

    redirect_to student_path(@student)
  end

  def destroy
    @student
    @student.destroy

    redirect_to students_path
  end

    private

    def student_params
      params.require(:student).permit(:name)
    end

    def set_student
      @student = Student.find(params[:id])
    end

end
