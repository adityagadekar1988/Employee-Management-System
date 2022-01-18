class EmployeesController < ApplicationController
  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      flash[:notice] = "Employee was added successfully."
      redirect_to employees_path
    else
      render 'new'
    end
  end 

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      flash[:notice] = "Employee details were updated successfully."
      redirect_to employees_path
    else
      render 'edit'
    end       
  end 

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    flash[:alert] = "Employee was Deleted" 
    redirect_to employees_path
  end

  def index
    @employees = Employee.all 
  end
end

def employee_params
  params.require(:employee).permit(:name, :email, :dob, :experience, :department, :designation,
                  :joining_date, 
                  addresses_attributes: [:id, :category, :flat_no, :area, :street_no, :landmark, :city, :district, :state, :postal_code, :employee_id], 
                  contacts_attributes: [:id, :contact_type, :contact_number, :employee_id])
end