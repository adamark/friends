module HomeHelper

  def link_gifs
    css = ''
    Page.published.each do |p|
      if p.parent.nil? && p.image.present?
        link = p.link_color.present? ? p.link_color : '#eceaf0'
        css += '.' + p.title.downcase + '-hover {background-image: url(' + p.image.remote_url + ');} '
        css += '.' + p.title.downcase + '-link-hover {color:' + link + '; text-decoration:none;} ' 
      end
    end
    css += 'a {color:#eceaf0} a:hover {color:#eceaf0; text-decoration:none;} body {background-color:#191919}'
    css
  end

  def find_gif(title)
    Page.find_by_title(title).image.remote_url if Page.find_by_title(title).image.present?
  end
end
