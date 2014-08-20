class Web::GrantOperatorsController < Web::ApplicationController
  def index
    @grant_operators = GrantOperator.all
  end
end
