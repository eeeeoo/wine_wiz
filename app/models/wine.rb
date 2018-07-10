class Wine < ApplicationRecord
  has_many :pairings
  has_many :categories, through: :pairings
end
