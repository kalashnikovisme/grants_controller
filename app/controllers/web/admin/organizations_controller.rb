class Web::Admin::OrganizationsController < Web::Admin::ApplicationController
  def index
    @organizations = Organization.all
  end

  def new
    @organization = Organization.new
  end

  def edit
    @organization = Organization.find params[:id]
  end

  def create
    @organization = Organization.new params[:organization]
    if @organization.save
      redirect_to admin_organizations_path
    else
      render action: :new
    end
  end

  def update
    @organization = Organization.find params[:id]
    if @organization.update_attributes params[:organization]
      redirect_to admin_organizations_path
    else
      render action: :edit
    end
  end

  def destroy
    @organization = Organization.find params[:id]
    @organization.destroy
    redirect_to admin_organizations_path
  end
end
