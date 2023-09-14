class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :recipes, dependent: :destroy
  has_many :foods, dependent: :destroy
end
