class Web::HelpsController < Web::ApplicationController
  def index
    @helps = Help.all
  end
end
