class Pairing < ApplicationRecord
  belongs_to :category
  belongs_to :wine

  def self.filter_category(category)
     self.all.select {|pairing| pairing.category_id == category}
  end

  # private
  # def filter_wine_group
  #   self.select {|pairing| pairing.wine.group == params[:group]}
  # end



end
