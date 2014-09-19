class Web::User::ContestRequestsController < Web::User::ApplicationController
  def index
    @contest_requests = ContestRequest.all.reverse
  end

  def new
    @contest_request = ContestRequest.new
  end

  def edit
    @contest_request = ContestRequest.find params[:id]
  end

  def create
    @contest_request = ContestRequest.new params[:contest_request]
    if @contest_request.save
      redirect_to contest_requests_path
    else
      render action: :new
    end
  end

  def update
    @contest_request = ContestRequest.find params[:id]
    if @contest_request.update_attributes params[:contest_request]
      redirect_to contest_requests_path
    else
      render action: :edit
    end
  end

  def destroy
    @contest_request = ContestRequest.find params[:id]
    @contest_request.destroy
    redirect_to contest_requests_path
  end
end
