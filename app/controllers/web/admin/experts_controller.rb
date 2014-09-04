class Web::Admin::ExpertsController < Web::Admin::ApplicationController
  def index
    @experts = ExpertDecorator.decorate_collection Expert.all.reverse
  end

  def new
    @expert = Expert.new
  end

  def edit
    @expert = Expert.find params[:id]
  end

  def create
    @expert = Expert.new params[:expert]
    if @expert.save
      redirect_to admin_experts_path
    else
      render action: :new
    end
  end

  def update
    @expert = Expert.find params[:id]
    if @expert.update_attributes params[:expert]
      redirect_to admin_experts_path
    else
      render action: :edit
    end
  end

  def destroy
    @expert = Expert.find params[:id]
    @expert.destroy
    redirect_to admin_experts_path
  end
end
