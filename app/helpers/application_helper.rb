require "redcarpet"

module ApplicationHelper
  def to_html(description)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, extensions = {})
    return markdown.render(description)
  end
end
