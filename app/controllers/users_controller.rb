class UsersController < ApplicationController

  expose(:reviews)
  expose(:user)

  before_action :set_reviews

  def show
  end

  private

  def set_reviews
    @reviews = user.reviews.limit(5)
  end

end
