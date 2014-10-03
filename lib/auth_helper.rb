module AuthHelper
  def basic_auth
    authenticate_or_request_with_http_basic do |user, password|
      user === "admin" && password === "adminislider"
    end
  end

  # User auth
  def sign_in(user)
    session[:user_id] = user.id
  end

  def sign_out
    session[:user_id] = nil
  end

  def signed_in?
    session[:user_id] && User.find_by_id(session[:user_id])
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  #Admin auth
  def admin_signed_in?
    if signed_in?
      current_user.role.admin?
    end
  end
end
