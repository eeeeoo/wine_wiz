class Category < ApplicationRecord
  has_many :pairings
  has_many :wines, through: :pairings

  has_many :recommendations
  has_many :users, through: :recommendations
  has_many :wines, through: :recommendations

end
