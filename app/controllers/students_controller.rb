class StudentsController < ApplicationController

  def index
  end

  def show
    @students = Student.all
  end

  def edit
  end
end
