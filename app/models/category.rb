class Category < ApplicationRecord
  has_many :recipes, through: :category_connectings
end
