module Web::Admin::ExpertsHelper
  def users_can_experts
    User.select { |user| !user.first_name.nil? && !user.middle_name.nil? && !user.last_name.nil? }
  end
end
