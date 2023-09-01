class SchoolsController < ApplicationController

  def index
    @schools = School.all
    @students = Student.all
  end

  def new
    @school = School.new 
  end

  def show
    @school = School.find(params[:id]) 
    @students = @school.students
  end

  def create
    @school = School.new(scl_params)
    if @school.save 
      redirect_to root_path
    else
      render :new
    end  
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])
    if @school.update(scl_params)
      redirect_to root_path
    else
      render :edit
    end 
  end

  private
  def scl_params
    # params.require(:employee).permit! 
    params.require(:school).permit(:scl_names, :scl_mob_no)
  end
end