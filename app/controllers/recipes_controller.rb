class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def index

  end

  def show

  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recpie = Recipe.new(params[:recipe_params])

    if @recipe.save
      redirect_to @recipe, notice: "Successfully created new recipe."
    else
      render 'new'
    end
  end

  def update

  end

  def destroy

  end

  private

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recpie).permit(:title, :description)
  end
end
