class Web::PagesController < Web::ApplicationController
  def index
    @pages = Page.where section: params[:section]
  end
end
