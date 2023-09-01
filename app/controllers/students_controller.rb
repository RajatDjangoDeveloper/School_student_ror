class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(stu_params)
      redirect_to school_path
    else
      render :edit
    end
  end
  private
  def stu_params
    params.require(:student).permit(:stu_name, :stu_mob_no)
  end
end