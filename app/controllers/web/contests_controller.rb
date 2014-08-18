class Web::ContestsController < Web::ApplicationController
  def index
    @contests = Contest.all
  end
end
