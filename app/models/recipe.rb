class Recipe < ApplicationRecord
  has_many :categorizations
  has_many :catagories, through: :categorizations
  has_many :reviews, dependent: :destroy
  has_many :ingredients, dependent: :destroy
  has_many :directions, dependent: :destroy
  belongs_to :user
  has_many :will_try_users
  has_many :did_try_users
  has_many :users, through: :will_try_users
  has_many :users, through: :did_try_users
end
