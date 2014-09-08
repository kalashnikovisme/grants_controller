class Web::Admin::ApplicationController < Web::ApplicationController
  before_filter :check_admin_signed_in

  layout 'admin'

  def check_admin_signed_in
    if !signed_in? || !current_user.role.admin?
      redirect_to new_session_path
    end
  end
end
