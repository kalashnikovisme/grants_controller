class Web::Admin::ApplicationController < Web::ApplicationController
  before_filter :check_signed_in

  layout 'admin'
end
