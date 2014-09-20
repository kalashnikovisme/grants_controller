class Web::User::ApplicationController < Web::ApplicationController
  before_filter :check_signed_in
end
