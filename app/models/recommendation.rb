class Recommendation < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :wine
end
