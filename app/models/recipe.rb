class Recipe < ApplicationRecord
  # validates_inclusion_of :allow_reviews, :in => [true, false]
  has_many :categorizations, inverse_of: :recipe, dependent: :destroy
  has_many :categories, through: :categorizations
  accepts_nested_attributes_for :categorizations, reject_if: :all_blank

  has_many :ingredients, inverse_of: :recipe, dependent: :destroy
  accepts_nested_attributes_for :ingredients, allow_destroy: true
  has_many :directions, inverse_of: :recipe, dependent: :destroy
  accepts_nested_attributes_for :directions, allow_destroy: true

  has_many :reviews, dependent: :destroy


  belongs_to :user
  has_many :will_try_users, dependent: :destroy
  has_many :did_try_users, dependent: :destroy
  has_many :users, through: :will_try_users
  has_many :users, through: :did_try_users
end
