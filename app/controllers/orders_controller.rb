class OrdersController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json do
        @orders = Order.search_by_condition(params[:condition], params[:q])
        
        page_info = get_page_info(@orders)
        @recordsTotal = page_info[:recordsTotal]
        @recordsFiltered = page_info[:recordsFiltered]

        page_number = params[:start].to_i/params[:length].to_i + 1
        @orders = @orders.page(page_number).per(params[:length].to_i)
      end
    end
  end

  def orderdetails
    @orderdetails = Order.find(params[:id]).orderdetails
    @orderdetails = @orderdetails.includes(:product)
    
    respond_to do |format|
      format.html
      format.json
    end
  end
end