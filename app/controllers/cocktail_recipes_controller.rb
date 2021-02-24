class CocktailRecipesController < ApplicationController

  def index
    @cocktail_recipes = CocktailRecipe.all
  end

  def new
    @cocktail_recipe = CocktailRecipe.new
  end

  def create
    cocktail_recipe_params = params.require(:cocktail_recipe).permit(:name, :recipe, :creator)
    @cocktail_recipe = CocktailRecipe.create(cocktail_recipe_params)
    redirect_to cocktail_recipe_path(@cocktail_recipe)
  end

  def show
    @cocktail_recipe = CocktailRecipe.find(params[:id])
  end

  def edit
    @cocktail_recipe = CocktailRecipe.find(params[:id])
  end

  def update
    cocktail_recipe = CocktailRecipe.find(params[:id])
    cocktail_recipe_params = params.require(:cocktail_recipe).permit(:name, :recipe, :creator)
    cocktail_recipe.update(cocktail_recipe_params)
    redirect_to cocktail_recipe_path(cocktail_recipe)
  end

  def destroy
    @cocktail_recipe = CocktailRecipe.find(params[:id])
    @cocktail_recipe.destroy!
    redirect_to cocktail_recipes_path, :notice => "Your cocktail has been deleted."
  end
end
