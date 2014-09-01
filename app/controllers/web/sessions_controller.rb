class Web::SessionsController < Web::ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.where(email: params[:user][:email].downcase).first
    if @user && @user.authenticate(params[:user][:password])
      sign_in @user
      redirect_to admin_path
    else
      @user = User.new params[:user]
      flash[:notice] = t('.wrong_email')
      render action: :new
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
