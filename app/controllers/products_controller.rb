class ProductsController < ApplicationController
  layout 'admin_panel', only: %i[new edit destroy]

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product.category
    else
      render new
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :featured)
  end
end
