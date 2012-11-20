module Admin
	class ImagesController < BaseController
	  def index
	    @images = Image.all
	  end

	  def new
	  	@page = Page.find(params[:page_id])
	  	@images = @page.images
	    @image = Image.new
	  end

	  def show
	    @image = Image.find(params[:id])
	  end

	  def edit
	    @image = Image.find(params[:id])
	  end

	  def create
	    @image = Image.create(params[:image])
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