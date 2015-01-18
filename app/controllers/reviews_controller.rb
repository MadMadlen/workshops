class ReviewsController < ApplicationController

  before_action :authenticate_user!, only: [:edit, :create, :destroy]

  expose(:category)
  expose(:review)
  expose(:product)

  def edit
  end

  def create
    self.review = Review.new(review_params)
    if review.save
      product.reviews << review
      redirect_to category_product_url(product.category, product), notice: 'Review was successfully created.'
    else
      render 'products/show'
    end
  end

  def destroy
    review.destroy
    redirect_to category_product_url(product.category, product), notice: 'Review was successfully destroyed.'
  end

  private
    def review_params
      params.require(:review).permit(:content, :rating, :user_id)
    end
end
