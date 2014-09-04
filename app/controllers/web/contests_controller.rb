class Web::ContestsController < Web::ApplicationController
  def index
    @contests = ContestDecorator.decorate_collection Contest.all.reverse
  end
end
