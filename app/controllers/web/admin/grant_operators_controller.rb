class Web::Admin::GrantOperatorsController < Web::Admin::ApplicationController
  def index
    @grant_operators = GrantOperator.all
  end

  def new
    @grant_operator = GrantOperator.new
  end

  def edit
    @grant_operator = GrantOperator.find params[:id]
  end

  def create
    @grant_operator = GrantOperator.new params[:grant_operator]
    if @grant_operator.save
      redirect_to admin_grant_operators_path
    else
      render action: :new
    end
  end

  def update
    @grant_operator = GrantOperator.find params[:id]
    if @grant_operator.update_attributes params[:grant_operator]
      redirect_to admin_grant_operators_path
    else
      render action: :edit
    end
  end

  def destroy
    @grant_operator = GrantOperator.find params[:id]
    @grant_operator.destroy
    redirect_to admin_grant_operators_path
  end
end
