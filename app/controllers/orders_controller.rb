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
    #test
    params = {id: 10100}
    @orderdetails = Order.find(params[:id]).orderdetails.includes(:product)
    
    respond_to do |format|
      format.html {  }
      format.json
    end
  end
end