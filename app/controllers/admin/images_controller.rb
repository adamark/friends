module Admin
	class ImagesController < BaseController
	  def index
	    @images = Image.all
	  end

	  def new
	  	@page = Page.find(params[:page_id])
	  	@sub_page = SubPage.find_by_id(params[:sub_page_id])
	  	@gallery = Gallery.find_by_id(params[:gallery_id])
	  	if @gallery.present?
	  		@images = @gallery.images
	  	elsif @sub_page.present? && @gallery.nil?
	  		@images = @sub_page.images
	  	else
	  		@images = @page.images
	  	end
	  	# @images = @gallery.present? ? @gallery.images : @sub_page.images
	    @image = Image.new
	  end

	  def show
	    @image = Image.find(params[:id])
	  end

	  def edit
	    @image = Image.find(params[:id])
	  end

	  def create
	  	@sub_page = SubPage.find_by_id(params[:sub_page_id])
	    @image = Image.create(params[:image])
	    # if @image.save
	    #   redirect_to admin_images_url, notice: 'Image was successfully added!'
	    # else
	    #   render 'new'
	    # end
	  end

	  def update
	    @image = Image.find(params[:id])
	    if @image.update_attributes(params[:image])
	      redirect_to admin_images_url, notice: 'Image was successfully updated!'
	    else
	      render 'edit'
	    end
	  end

	  def destroy
	    @image = Image.find(params[:id])
	    if @image.destroy
	    	redirect_to :back, notice: 'Image was deleted'
	    else
	    	redirect_to :back, notice: 'Image could not be deleted!'
	    end
	  end

	end
end