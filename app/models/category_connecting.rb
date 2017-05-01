class Category_connecting < ApplicationRecord
  belongs_to :category 
  belongs_to :recipe
end
