class StudentsController < ApplicationController
   before_action :find_student, only:[:show, :edit, :update, :destroy]

  def index
    @student = Student.all
  end

 def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path
    else
      render :new
    end
  end

  def show
    # @student = Student.find_by(id: params[:id])
  end

  def edit
    # @student = Student.find_by(id: params[:id])
  end

  def update
    # @student = Student.find_by(id: params[:id])
    if @student.update(student_params)
     redirect_to root_path
    else
     render :edit
    end
  end

  def destroy
    # @student = Student.find_by(id: params[:id])
    if @student.destroy
      redirect_to root_path
    end
  end

  private

  def student_params
    params.require(:student).permit(:name, :email, :password, :address)
  end

  def find_student
    @student = Student.find_by(id: params[:id])
  end

end
