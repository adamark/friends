module Admin
	class GalleriesController < BaseController
		def index
	    @gallerys = Gallery.all
	  end

	  def new
	  	@page = Page.find_by_id(params[:page_id])
	  	@sub_page = SubPage.find_by_id(params[:sub_page_id])
	    @gallery = Gallery.new
	  end

	  def show
	    @gallery = Gallery.find(params[:id])
	  end

	  def edit
	  	@page = Page.find_by_id(params[:page_id])
	  	@sub_page = SubPage.find_by_id(params[:sub_page_id])
	    @gallery = Gallery.find(params[:id])
	  end

	  def create
	    @gallery = Gallery.new(params[:gallery])
	    if @gallery.save
	      redirect_to admin_pages_url, notice: 'Sub Page was successfully added!'
	    else
	      render 'new'
	    end
	  end

	  def update
	    @gallery = Gallery.find(params[:id])
	    if @gallery.update_attributes(params[:gallery])
	      redirect_to admin_pages_url, notice: 'Page was updated successfully!'
	    else
	      render 'edit'
	    end
	  end

	  def destroy
	    @gallery = Gallery.find(params[:id])
	    @gallery.destroy
	  end
	end
end