class Review < ApplicationRecord
  belongs_to :user
  belongs_to :wine
  validates :title, :content, presence: true
end
