class ReviewsController < ApplicationController
  
  before_action :require_user, :create 
  def create
    recipe_id = params[:recipe_id]
    @recipe = Recipe.find(recipe_id)
   
    @review = @recipe.reviews.build(review_params)
    @review.chef_id = current_user.id
    @review.save
    if @review.errors.any?
      flash[:danger] = "Required fields are missing"
      redirect_to recipe_path(@recipe)
    else
      redirect_to recipe_path(@recipe)
    end
  end
  
  private
  
    def review_params
      params.require(:review).permit(:title, :review)
    end
  
end