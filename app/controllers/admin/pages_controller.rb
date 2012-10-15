module Admin
	class PagesController < BaseController
	  def index
	    @pages = Page.all
	  end

	  def new
	    @page = Page.new
	  end

	  def show
	    @page = Page.find(params[:id])
	  end

	  def edit
	    @page = Page.find(params[:id])
	  end

	  def create
	    @page = Page.new(params[:page])
	    if @page.save
	      redirect_to admin_pages_url, notice: 'Page was successfully added!'
	    else
	      render 'new'
	    end
	  end

	  def update
	    @page = Page.find(params[:id])
	    if @page.update_attributes(params[:page])
	      redirect_to admin_pages_url, notice: 'Page was successfully updated!'
	    else
	      render 'edit'
	    end
	  end

	  def destroy
	    @page = Page.find(params[:id])
	    @page.destroy
	  end
	end
end