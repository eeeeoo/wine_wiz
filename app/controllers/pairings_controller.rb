class PairingsController < ApplicationController
  skip_before_action :authorized?, only: %i[new create]

  def index
    if params[:pairing]
      arr = Pairing.all.select{|pairing| pairing.category_id == params[:pairing][:category_id].to_i }
      @pairings = filter_wine_group(arr, params[:group])
    else
      @pairings = []
    end

  end

  private
  def filter_wine_group(arr,group)
    arr.select {|pairing| pairing.wine.group == group}
  end

end
