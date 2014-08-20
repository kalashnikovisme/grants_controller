class Web::Admin::ContestsController < Web::Admin::ApplicationController
  def index
    @contests = Contest.all
  end

  def new
    @contest = Contest.new
  end

  def edit
    @contest = Contest.find params[:id]
  end

  def create
    @contest = Contest.new params[:contest]
    if @contest.save
      redirect_to admin_contests_path
    else
      render action: :new
    end
  end

  def update
    @contest = Contest.find params[:id]
    if @contest.update_attributes params[:contest]
      redirect_to admin_contests_path
    else
      render action: :edit
    end
  end

  def destroy
    @contest = Contest.find params[:id]
    @contest.destroy
    redirect_to admin_contests_path
  end
end
