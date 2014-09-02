module Web::HelpsHelper
  def helps_links(helps)
    links = []
    helps.each do |help|
      if request.original_url == help_url(help.id)
        links << content_tag(:li, link_to(help.title, help_path(help.id), { "data-toogle" => :pill }), class: :active)
      else
        links << content_tag(:li, link_to(help.title, help_path(help.id), { "data-toogle" => :pill }))
      end
    end
    links.join("")
  end
end
