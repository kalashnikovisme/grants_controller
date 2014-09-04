class ContestDecorator < Draper::Decorator
  delegate_all

  def lead
    "#{model.description.first(200)} ..."
  end

end
