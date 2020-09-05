class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user.image.new
  end

  def create
    @user.image.new
    @user = User.new(post_params)
  end
    

  def show
    @user = User.find(params[:id])
    @user = current_user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    @user.image = params[:image].read
  end

  private

  def post_params
    params.require(:user).permit(:image)
  end
end
