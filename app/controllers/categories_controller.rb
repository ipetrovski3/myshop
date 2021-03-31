class CategoriesController < ApplicationController
  layout 'admin_panel', only: %i[new edit destroy]

  def show
    @category = Category.friendly.find(params[:id])
    @pagy, @products = pagy(@category.products.all, items: 6)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      render new
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :image, :size)
  end
end
