class LineItemsController < ApplicationController
  def create
    line_item = LineItem.new params[:line_item]
    product = line_item.product
    flash[:message] = "#{product.title} added to cart."
    redirect_to :back
  end
end
