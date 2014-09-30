class Web::OrganizationsController < Web::ApplicationController
  def index
    @organizations = Organization.all
  end
end
