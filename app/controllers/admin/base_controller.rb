module Admin
  class BaseController < ApplicationController
    before_filter :authenticate_user!
  	layout :admin_layout

  	private
  	def admin_layout
  		"admin"
  	end
  end
end