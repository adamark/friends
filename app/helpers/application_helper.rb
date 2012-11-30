module ApplicationHelper

  def make_url_array_or_default
    content = Page.find_by_title('?').content
    content.present? ? content.split(',') : %w(http://google.com)
  end

  def random_url
    content = Page.find_by_title('?').content
    content.present? ? content.split(',').shuffle.first : %w(http://google.com)
  end

  def icon(name, content)
    raw("<i class=\"icon-#{name}\"></i> ") + content
  end
  
  def is_active?(path)
    "active" if current_page?(path)
  end
  
  def is_current?(path)
    current_page?(path)
  end
  
  def content_tag_for(url, title, id)
    content_tag(:li, link_to( is_current?(url) ? icon("share-alt", title) : title, url, class: is_active?(url), id: id))
  end

  def link_to_add_fields(name, f, association, opts = {})
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    css_class = opts[:class].present? ? "add_fields #{opts[:class]}" : "add_fields"
    link_to(name, '#', class: css_class, data: {id: id, fields: fields.gsub("\n", "")})
  end
end
