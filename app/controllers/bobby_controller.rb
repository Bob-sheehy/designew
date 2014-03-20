class BobbyController < ApplicationController
  def view
      @products = Product.all

  end

  def show
      @products = Product.all

      @products = Product.order(:title)
  end
end
