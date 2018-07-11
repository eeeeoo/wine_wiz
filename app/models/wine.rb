class Wine < ApplicationRecord
  has_many :pairings
  has_many :categories, through: :pairings
  has_many :reviews, dependent: :delete_all
  has_many :users, through: :reviews
  has_many :recommendations
  has_many :users, through: :recommendations
  has_many :categories, through: :recommendations
end
