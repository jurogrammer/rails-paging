class OrdersController < ApplicationController
  def index
    @orders = Order.all


    respond_to do |format|
      format.html
      format.json
    end
  end
end