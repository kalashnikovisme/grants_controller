class Web::HelpsController < Web::ApplicationController
  def show
    @helps = Help.all
    @help = Help.find params[:id]
  end
end
