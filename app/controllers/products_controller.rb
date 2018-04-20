class ProductsController < ApplicationController
  def index
    @products = Product.all
    @most_reviews = @products.most_reviews
    @made_in_USA = @products.made_in_USA
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
    @reviews = Review.all
    @review = Review.find(@product.id)
  end

  def edit
    @product = Product.find(params[:id])
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

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  private
    def product_params
      params.require(:product).permit(:name, :cost, :country_of_origin)
    end
end
