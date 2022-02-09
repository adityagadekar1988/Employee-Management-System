class EmployeesController < ApplicationController
  before_action :require_user

  def new
    @employee = Employee.new
    2.times{@employee.addresses.build}
    @employee.contacts.build  
  end

  def create
    @employee = Employee.new(employee_params) 
    if @employee.save
      DocsNotifierMailer.with(employee: @employee).notification_email.deliver_later if employee_params[:document_ids].length < 10
      flash[:notice] = "Employee was added successfully."
      redirect_to employees_path
    else
      render 'new'
    end
  end 

  def show
    @employee = Employee.find(params[:id])
  end 
  
  def edit
    @employee = Employee.find(params[:id])
  end
  
  def update
    @employee = Employee.find(params[:id]) 
    if @employee.update(employee_params)
      DocsNotifierMailer.with(employee: @employee).notification_email.deliver_later if employee_params[:document_ids].length < 10
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

  private

  def employee_params
    params.require(:employee).permit(:name, :email, :dob, :experience, :department, :designation,
                    :joining_date, addresses_attributes: [:id, :first_line, :second_line, :landmark, 
                                                          :city, :district, :state, :postal_code], 
                                  contacts_attributes: [:id, :contact_no, :_destroy], :document_ids=>[])
  end
end
