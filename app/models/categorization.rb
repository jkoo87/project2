class Categorization < ApplicationRecord
  belongs_to :recipe
  belongs_to :category
  accepts_nested_attributes_for :category
end
