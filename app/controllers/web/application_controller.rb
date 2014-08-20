class Web::ApplicationController < ApplicationController
  include AuthHelper
  def check_signed_in
    unless signed_in?
      redirect_to new_session_path
    end
  end
end
