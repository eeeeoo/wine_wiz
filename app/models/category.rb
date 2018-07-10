class Category < ApplicationRecord
  has_many :pairings
  has_many :wines, through: :pairings
end
