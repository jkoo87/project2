class RecipesController < ApplicationController

  def index
    if params[:category_id]
    @category = Category.find(params[:category_id])
    @recipes = Recipe.all
    else
    @recipes = Recipe.all
    end
  end

  def new
    @recipe = Recipe.new
    10.times { @recipe.directions.build}
    10.times { @recipe.ingredients.build}
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients
    @directions = @recipe.directions
    @num = "0".to_i
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = current_user.recipes.create!(recipe_params)
    redirect_to recipe_path(@recipe), notice: "New Recipe added!"
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






  private
  def recipe_params
    params.require(:recipe).permit(:title, :img_url, :cooking_time, :description, :cooking_level, :allow_reviews, directions_attributes: [:id , :recipe_direction], ingredients_attributes: [:id , :list])
  end

end
