module Admin
	class SubPagesController < BaseController
	  def index
	    @sub_pages = SubPage.all
	  end

	  def new
	  	@page = Page.find_by_id(params[:page_id])
	    @sub_page = SubPage.new
	  end

	  def show
	    @sub_page = SubPage.find(params[:id])
	  end

	  def edit
	  	@page = Page.find_by_id(params[:page_id])
	    @sub_page = SubPage.find(params[:id])
	  end

	  def create
	  	@page = Page.find_by_id(params[:page_id])
	    @sub_page = SubPage.new(params[:sub_page])
	    if @sub_page.save
	      redirect_to admin_pages_url, notice: 'Sub Page was successfully added!'
	    else
	      render 'new'
	    end
	  end

	  def update
	    @sub_page = SubPage.find(params[:id])
	    if @sub_page.update_attributes(params[:sub_page])
	      redirect_to admin_pages_url, notice: 'Page updated successfully!'
	    else
	      render 'edit'
	    end
	  end

	  def destroy
	    @sub_page = SubPage.find(params[:id])
	    @sub_page.destroy
	  end
	end
end