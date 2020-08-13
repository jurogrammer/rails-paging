class OrdersController < ApplicationController
  def index
    @orders = Order.all

    respond_to do |format|
      format.html
      format.json
    end
  end

  def orderdetails
    @orderdetails = Order.find(params[:id]).orderdetails    
    respond_to do |format|
      format.html {  }
      format.json { render json: @orderdetails}
    end
  end
end