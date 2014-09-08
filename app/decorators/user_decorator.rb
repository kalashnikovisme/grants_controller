class UserDecorator < Draper::Decorator
  delegate_all

  def role
    model.role.text
  end
end
