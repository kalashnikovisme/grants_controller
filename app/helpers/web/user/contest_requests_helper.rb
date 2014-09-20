module Web::User::ContestRequestsHelper
  def current_hint_lead(hints, attribute)
    current_hint = hints.select { |hint| hint.subject == I18n.t("activerecord.attributes.contest_request.#{attribute}")  }.first
    current_hint.lead if current_hint
  end
end
