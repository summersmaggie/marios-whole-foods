class ProductsController < ApplicationController
  def show
    @products = Products.all
  end
end
