class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :recipes, dependent: :destroy
  has_many :foods, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true
  validates :encrypted_password, presence: true
  validates :reset_password_token, presence: true
  validates :confirmation_token, presence: true
end
