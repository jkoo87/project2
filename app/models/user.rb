class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :recipes, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :recipes, through: :will_try_connectings, dependent: :destroy
  has_many :recipes, through: :did_try_connectings, dependent: :destroy

end
