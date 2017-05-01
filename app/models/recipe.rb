class Recipe < ApplicationRecord
  has_many :catagories, through: :category_connectings
  has_many :reviews
  has_many :ingredients
  has_many :directions
  belongs_to :user
  has_many :users, through: :will_try_connectings
  has_many :users, through: :did_try_connectings
end
