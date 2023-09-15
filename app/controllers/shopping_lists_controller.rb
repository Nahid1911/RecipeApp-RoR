class ShoppingListsController < ApplicationController
  def index
    @recipe_foods = RecipeFood.group(:food_id).sum(:quantity)
    @foods = Food.all
  end

  def show
    @recipes = Recipe.all
  end
end
