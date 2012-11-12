module Admin
  class BaseController < ApplicationController
  	layout :admin_layout

  	private
  	def admin_layout
  		"admin"
  		# if logged_in? and current_user.is_able_to('siteadmin')
  		# 	"admin"
  		# else
  		# 	"application"
  		# end
  	end
  end
end