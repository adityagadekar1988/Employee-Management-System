class AddressesController < ApplicationController
  def new
    @address = Address.new 
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      redirect_to employees_path
    end 
  end 

  def edit
    @address = Address.find(params[:id])
  end 

  def update
    @address = Address.find(params[:id])
    if @address.update
      flash[:notice] = "Address was updated successfully" 
      redirect_to employees_path
    end 
  end

  def index
    @addresses = Address.all
  end

  private

  def address_params
    params.require(:address).permit(:first_line, :second_line :landmark, :city, :district, :state, :postal_code, :employee_id)
  end
end
