class Web::ContestsController < Web::ApplicationController
  def index
    @actual_contests = ContestDecorator.decorate_collection Contest.actual
    @old_contests = ContestDecorator.decorate_collection Contest.old
  end

  def show
    @contest = Contest.find params[:id]
  end
end
