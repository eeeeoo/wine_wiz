class RecommendationsController < ApplicationController
  before_action :fetch_recommendation, only: %i[show edit update destroy]
  def index
    @recommendations = Recommendation.all
  end

  def new
    @recommendation = Recommendation.new
  end

  def show; end

  def create
    @recommendation = Recommendation.new(recommendation_params(:comment, :wine_id, :category_id))
    @recommendation.user_id = @logged_in_user.id
    if @recommendation.save
      redirect_to recommendations_path
    else
      render :new
    end
  end

  def edit
    verify_user
  end

  def update
    if @recommendation.update(recommendation_params(:comment))
      redirect_to @logged_in_user
    else
      render :edit
    end
  end

  def destroy
    @recommendation.destroy
    redirect_to @logged_in_user
  end

  private
  def recommendation_params(*args)
    params.require(:recommendation).permit(*args)
  end

  def fetch_recommendation
    @recommendation = Recommendation.find(params[:id])
  end

  def verify_user
    if @recommendation.user_id != @logged_in_user.id
      redirect_to new_session_path
    end
  end
end
