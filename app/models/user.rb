class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :recipes, dependent: :destroy
  has_many :reviews, dependent: :destroy
  # has_many :will_try_users
  # has_many :did_try_users
  # has_many :recipes, through: :will_try_users, dependent: :destroy
  # has_many :recipes, through: :did_try_users, dependent: :destroy

end
