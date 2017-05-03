class RecipesController < ApplicationController

  def index
    if params[:category_id]
    @category = Category.find(params[:category_id])
    @recipes = Recipe.all.order("created_at DESC")
    else
    @recipes = Recipe.all.order("created_at DESC")
    end
  end

  def new
    @recipe = Recipe.new
    @categories = Category.all
    @categories.count.times {@recipe.categorizations.build}
    12.times { @recipe.directions.build}
    12.times { @recipe.ingredients.build}
  end

  def create
    @recipe = current_user.recipes.create!(recipe_params)
    redirect_to recipe_path(@recipe), notice: "New Recipe added!"
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients
    @directions = @recipe.directions
    @num = "0".to_i
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @categories = Category.all
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe), notice: "#{@recipe.title}'s info updated."
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to root_path, notice: "Recipe deleted."
  end

  def add_did_try_user
    @recipe = Recipe.find(params[:id])
    @recipe.did_try_users.create(user: current_user)
    redirect_to :back
  end


  def remove_did_try_user
    DidTryUser.find_by(user: current_user, recipe_id: params[:id]).destroy
    redirect_to :back
  end


  def add_will_try_user
    @recipe = Recipe.find(params[:id])
    @recipe.will_try_users.create(user: current_user)
    redirect_to :back
  end


  def remove_will_try_user
    WillTryUser.find_by(user: current_user, recipe_id: params[:id]).destroy
    redirect_to :back
  end






  private
  def recipe_params
    params.require(:recipe).permit(:title, :img_url, :cooking_time, :description, :cooking_level, :allow_reviews, directions_attributes: [:id , :recipe_direction], ingredients_attributes: [:id , :list], categorizations_attributes: [:category_id, :recipe_id])
  end

end
