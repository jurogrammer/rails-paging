class CommentsController < ApplicationController
  def update
    @order = Order.find(params[:order_id].to_i)
    @order.comments = params[:comment]
    @order.save! 
    
    respond_to do |format|
      format.html
      format.json {render json:{ status: 200 } }
    end
  end
end