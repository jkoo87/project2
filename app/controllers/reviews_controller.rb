class ReviewsController < ApplicationController

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.reviews.create!(review_params.merge(user: current_user))
    redirect_to :back
  end



  def destroy
    Review.find_by(user: current_user, recipe_id: params[:recipe_id]).destroy
    redirect_to :back
  end


  private
  def review_params
    params.require(:review).permit(:comment, :rating)
  end


end
