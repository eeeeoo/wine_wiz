class ReviewsController < ApplicationController
  before_action :fetch_review, only: %i[show, edit, update, destroy]
  def index
    @reviews = Review.all
  end

  def new
    @wine = Wine.find(params[:wine_id])
    @review = Review.new
  end

  def show; end

  def create
    @wine = Wine.find(params[:wine_id])
    @review = Review.new(review_params(:title, :content))
    @review.rating = params[:rating].to_i
    @review.wine_id = params[:wine_id]
    @review.user_id = @logged_in_user.id
    if @review.save
      redirect_to @wine
    else
      render :new
    end 
  end

  def edit; end

  def update
    if @review.update(review_params(:title, :content, :rating))
      redirect_to @review
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to reviews_path
  end

  private
  def review_params(*args)
    params.require(:review).permit(*args)
  end

  def fetch_review
    @review = Review.find(params[:id])
  end
end
