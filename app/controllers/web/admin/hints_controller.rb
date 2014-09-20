class Web::Admin::HintsController < Web::Admin::ApplicationController
  def index
    @hints = Hint.all.reverse
  end

  def new
    @hint = Hint.new
  end

  def edit
    @hint = Hint.find params[:id]
  end

  def create
    @hint = Hint.new params[:hint]
    if @hint.save
      redirect_to admin_hints_path
    else
      render action: :new
    end
  end

  def update
    @hint = Hint.find params[:id]
    if @hint.update_attributes params[:hint]
      redirect_to admin_hints_path
    else
      render action: :edit
    end
  end

  def destroy
    @hint = Hint.find params[:id]
    @hint.destroy
    redirect_to admin_hints_path
  end
end
