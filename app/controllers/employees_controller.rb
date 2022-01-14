class EmployeesController < ApplicationController
  def new
    @employee = Employee.new 
  end

  def create 
  end 

  def edit
    @employee = Employee.find(params[:id])
  end

  def update 
  end 

  def destroy
    @employee.destroy 
    redirect_to employees_path
  end

  def index
    @employees = Employee.all 
  end
end
