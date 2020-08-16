class CustomersController < ApplicationController
  def index
  end

  def show
    @customer = Customer.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @customer}
    end
  end
end