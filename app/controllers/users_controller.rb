class UsersController < ApplicationController
  def welcome
    render 'welcome'
  end
  def index
      @users = User.all
      render 'index'
  end

  def new
      @user = User.new
      redirect_to '/users/:id'
  end

  def show
      binding.pry
      @user = User.find(params[:id])
      render 'show'
  end

  def create
      @user = User.new(user_params)
   
    if @user.save
      flash[:success] = "Successfully registered"
      redirect_to '/users_path'
    end
  end

  def delete
  end

  def like
  end

  private
    def user_params
        params.require(:user).permit(:name, :alias, :email, :password, :conf_pwd)
    end
end
