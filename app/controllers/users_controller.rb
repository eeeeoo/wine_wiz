class UsersController < ApplicationController
  skip_before_action :authorized?, only: %i[new create]

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in_user(@user.id)
      redirect_to pairings_path, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name,:email,:password)
  end


end
