module Web::User::ContestRequestsHelper
  def current_hint(attribute)
    if @hints
      @hints.select { |hint| hint.subject == I18n.t("activerecord.attributes.contest_request.#{attribute}")  }.first
    end
  end

  def popover_for_this_attribute(attribute)
    hint = current_hint(attribute)
    if hint
      "#{hint.lead}<br/>#{link_to(t('.read_more'), hint_path(hint), target: '_blank')}"
    end
  end
end
