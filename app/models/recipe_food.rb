class RecipeFood < ApplicationRecord
  belongs_to :food
  belongs_to :recipe

  after_save :update_recipe_ingredient_counter
  after_save :update_recipe_ingredient_value
  after_destroy :update_recipe_ingredient_value_on_destroy
  after_destroy :update_recipe_ingredient_counter
  
  def update_recipe_ingredient_counter
    recipe.update(ingredient_counter: recipe.recipe_foods.count)
  end

  def update_recipe_ingredient_value
    self.quantity ||= 0
    self.food.price ||= 0

    ingredient_value = self.quantity * self.food.price
    total_ingredient_value = self.recipe.ingredient_value.to_f + ingredient_value
    self.recipe.update(ingredient_value: total_ingredient_value)
  end

  def update_recipe_ingredient_value_on_destroy
    self.quantity ||= 0
    self.food.price ||= 0

    ingredient_value = self.quantity * self.food.price
    total_ingredient_value = self.recipe.ingredient_value.to_f - ingredient_value
    self.recipe.update(ingredient_value: total_ingredient_value)
  end
end
