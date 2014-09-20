module Web::HintsHelper
  def hints_links(hints)
    links = []
    hints.each do |hint|
      if request.original_url == hint_url(hint.id)
        links << content_tag(:li, link_to(hint.subject, hint_path(hint.id), { "data-toogle" => :pill }), class: :active)
      else
        links << content_tag(:li, link_to(hint.subject, hint_path(hint.id), { "data-toogle" => :pill }))
      end
    end
    links.join("")
  end
end
