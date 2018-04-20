class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @product = Product.find(params[:product_id])
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      flash[:notice] = "Review saved successfully!"
      redirect_to product_path(@product)
    else
      flash[:alert] = "Sorry, couldn't save."
      render :new
    end
  end

  private
    def review_params
      params.require(:review).permit(:author, :content_body, :rating)
    end
end
