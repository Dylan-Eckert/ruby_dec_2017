class StudentsController < ApplicationController
  def index
    @dojo = Dojo.joins(:students).find(params[:dojo_id])
    @students = @dojo.students
  end

  def new

  end

  def create
    @student = Student.create(student_params)

    if @student.valid?
      redirect_to students_path
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to new_student_path
    end

  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)
    redirect_to students_path
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy
    redirect_to students_path
  end

  private
    def student_params
      params.require(:student).permit(:fname, :lname, :email)
    end
end
