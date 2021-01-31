class OrdersController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @order = @product.orders.build
  end

  def create
    @product = Product.find(params[:product_id])
    @order = @product.orders.build(order_params)

    if @order.save
      redirect_to @order
    else
      render :new
    end
  end

  def show; end

  private

  def order_params
    params.require(:order).permit(:name, :address, :phone, :qty, :size, :note, :town, :completed)
  end
end
