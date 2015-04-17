class ProductsController < ApplicationController

  def index
    @products = Product.order(:description)
  end
  
  def show
    @product = Product.find(params[:id])
    @category = Category.find(@product.category_id)
  end
  def category
    #@category = category.find_by(:slug, :params[:slug])
    @products = Product.order(:description).where(category_id: params[:id] )
    render :index
  end
  
  private
  def products_params
    params.require(:product).permit(:name, :description, :price, :image, :category)
  end
end
