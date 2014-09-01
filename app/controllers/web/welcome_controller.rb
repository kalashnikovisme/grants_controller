class Web::WelcomeController < Web::ApplicationController
  layout 'welcome'

  def index
    @help = Help.first
  end
end
