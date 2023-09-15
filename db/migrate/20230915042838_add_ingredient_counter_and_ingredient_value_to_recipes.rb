class AddIngredientCounterAndIngredientValueToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :ingredient_counter, :integer
    add_column :recipes, :ingredient_value, :decimal
  end
end
