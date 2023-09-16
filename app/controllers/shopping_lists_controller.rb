class ShoppingListsController < ApplicationController
  def index
    @recipe_foods = RecipeFood.group(:food_id).sum(:quantity)
    @user = current_user
    @foods = @user.foods
  end

  def show
    @recipes = Recipe.all
  end
end
