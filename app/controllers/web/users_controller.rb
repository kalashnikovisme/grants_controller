class Web::UsersController < Web::ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]
    if @user.save
      redirect_to new_session_path
    else
      render :new
    end
  end
end
