module ApplicationHelper
  include AuthHelper

  #FIXME запрос из helpers
  def any_helps
    Help.first
  end
  #FIXME запрос из helpers
  def any_hints
    Hint.first
  end
end
