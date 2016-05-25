class UsersController < ApplicationController
  before_action :authenticate_user!

  before_action :correct_user, only: [ :edit, :update]

  before_action :set_user, only: [ :show, :edit, :update, :like_lands]

  def index
    @users = User.all
  end

  def show
    @lands = @user.lands.page(params[:page]).per(8)
  end

  def edit
  end

  def like_lands
    @lands = @user.like_lands
  end

  def upadate
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def correct_user
    user = User.find(params[:id])
    if !current_user(user)
      redirect_to root_path, alert: '許可されていないページです。'
    end
  end
end
