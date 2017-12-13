class AddressesController < ApplicationController

  def new
    @address = Address.new(address_params)
    @address.student_id = params[:student_id]

    @address.save

    redirect_to students_path(@address.student)
  end

  private

  def address_params
    params.require(:address).permit(:description, :street_address, :city, :state, :zip_code)
  end
end
