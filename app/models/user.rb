class User < ApplicationRecord
  has_many :recipes
  has_many :ingredients
  validates_uniqueness_of :username
  validates_uniqueness_of :email
  validates :email, presence: true
  accepts_nested_attributes_for :recipes
  has_secure_password

  def ingred_by_due_date
    ingredients.reverse
  end
end
