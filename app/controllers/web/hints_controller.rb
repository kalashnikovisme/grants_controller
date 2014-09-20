class Web::HintsController < Web::ApplicationController
  def show
    @hints = Hint.all
    @hint = Hint.find params[:id]
  end
end
