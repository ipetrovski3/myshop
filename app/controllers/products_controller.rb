class ProductsController < ApplicationController
  layout 'admin_panel', only: %i[new edit destroy]

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_path
    else
      render new
    end
  end

  private

  def product_params
    params.permit(:name, :price, :description, :featured, :category_id, :image)
  end
end
