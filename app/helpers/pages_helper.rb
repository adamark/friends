module PagesHelper
	def link_image(s)
		image = s.images.where(link_image: true)
		image.first.image.remote_url
	end

	def link_image_exists(page)
		page.images.where(link_image: true).present?
	end

	def background_and_links_css(page)
		link = page.link_color.present? ? page.link_color : '#eceaf0'
		bg = page.background_color.present? ? page.background_color : '#191919'
		css = 'a {color:' + link + '} ' +
					'a:hover {color:' + link + '; ' + 'text-decoration:none;} ' +
		 			'h3 {color:' + link + '} ' +
		 			'body {background-color:' + bg + '} '
	end

end
