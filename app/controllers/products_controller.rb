class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product saved successfully!"
      redirect_to products_path
    else
      flash[:alert] = "Sorry, couldn't save."
      render :new
    end
  end

  private
    def product_params
      params.require(:product).permit(:name, :cost, :country_of_origin)
    end
end
