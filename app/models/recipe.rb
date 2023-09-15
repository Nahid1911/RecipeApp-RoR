class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy

  validates :name, presence: true
  validates :preparation_time, presence: true
  validates :cooking_time, presence: true
  validates :description, presence: true
  validates :ingredient_counter, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :ingredient_value, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
