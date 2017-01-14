class RecipesController < ApplicationController

  before_action :require_user, only: [:new]

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build

  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to '/recipes'
    else
      @error = @recipe.errors.full_messages
      render 'new'
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update_attributes(recipe_params)
      redirect_to '/recipes'
    else
      @error = @recipe.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.ingredients.destroy_all
    @recipe.destroy
    redirect_to '/recipes'
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :author, :price, :image, :minutes, :howto, ingredients_attributes: [:id, :name, :amount, :_destroy])
  end

end
