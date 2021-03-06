module Web::ApplicationHelper
  def title(page_title = t('.title'))
    content_for(:title) { "#{page_title} | #{t('project_attributes.name')}" }
  end
end
