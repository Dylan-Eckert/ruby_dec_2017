class StudentsController < ApplicationController
  def index
    @dojo = Dojo.find(params[:dojo_id])
    p @dojo
    @students = @dojo.students
    p @students
  end

  def new
    @dojo = Dojo.find(params[:dojo_id])
  end

  def create
    @dojo = Dojo.find(params[:dojo_id])
    @student = Student.create(student_params)
    @student.update(dojo: @dojo)

    if @student.valid?
      redirect_to students_path
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to new_student_path
    end

  end

  def show
    @dojo = Dojo.find(params[:dojo_id])
    @student = Student.find(params[:id])
    @cohortees = @student.cohort
    render layout: "students/show"
  end

  def edit
    @dojo = Dojo.find(params[:dojo_id])
    @student = Student.find(params[:id])
  end

  def update
    @dojo = Dojo.find(params[:dojo_id])
    student = Student.find(params[:id])
    student.update(student_params)
    redirect_to students_path
  end

  def destroy
    @dojo = Dojo.find(params[:dojo_id])
    student = @dojo.students.find(params[:id])
    student.destroy
    redirect_to students_path
  end

  private
    def student_params
      params.require(:student).permit(:fname, :lname, :email)
    end
end
