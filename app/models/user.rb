class User < ApplicationRecord
  has_many :reviews, dependent: :delete_all
  has_many :wines, through: :reviews
  has_many :recommendations
  has_many :categories, through: :recommendations
  has_many :wines, through: :recommendations

  validates_uniqueness_of :email
  has_secure_password
end
