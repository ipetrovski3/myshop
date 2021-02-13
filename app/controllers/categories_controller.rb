class CategoriesController < ApplicationController
  def show
    @category = Category.friendly.find(params[:id])
    @pagy, @products = pagy(@category.products.all, items: 6)
  end
end
