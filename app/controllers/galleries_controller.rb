class GalleriesController < ApplicationController
	 def index
    @gallerys = Gallery.all
  end

  def new
    @gallery = Gallery.new
  end

  def show
    @gallery = Gallery.find(params[:id])
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end

  def create
    @gallery = Gallery.new(params[:gallery])
    if @gallery.save
      flash[:success] = "Done!"
      redirect_to gallerys_url
    else
      render 'new'
    end
  end

  def update
    @gallery = Gallery.find(params[:id])
    if @gallery.update_attributes(params[:gallery])
      flash[:success] = "Updated!"
      redirect_to gallerys_url
    else
      render 'edit'
    end
  end

  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
  end
end
