class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
  end

  def edit
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render json: user.errors.full_messages
    end
  end

  def new
  end

  def create
    user = User.new(params.require(:user).permit(:name, :email))
    if user.save!
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to 'index'
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
