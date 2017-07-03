class SessionsController < ApplicationController
  def new
      render new
  end

  def create
      @user = User.find_by_email(params[:email])
      if @user && @user.authenticate(params[:password])
        session[:user_id]= @user.id
        redirect_to "/dashboard/#{@user.id}"
 
      else
 
        flash.now[:danger] = 'Incorrect email password combo.'
        redirect_to 'login'
      end

  end

  def destroy
    reset_session
    @current_user = nil
    redirect_to 'new'
  end

  private
 
  def session_params
    params.require(:session).permit(:email, :password)
  end
end
