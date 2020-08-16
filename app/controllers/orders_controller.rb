class OrdersController < ApplicationController
  def index
    @orders = Order.page(params[:draw]).per(params[:length])
    page_info = get_page_info(@orders)
    @recordsTotal = page_info[:recordsTotal]
    @recordsFiltered = page_info[:recordsFiltered]

    respond_to do |format|
      format.html
      format.json
    end
  end

  def orderdetails
    @orderdetails = Order.find(params[:id]).orderdetails
    respond_to do |format|
      format.html {  }
      format.json
    end
  end
end