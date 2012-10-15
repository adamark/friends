class SubPagesController < ApplicationController
  def index
    @sub_pages = SubPage.all
  end

  def new
    @sub_page = SubPage.new
  end

  def show
    @sub_page = SubPage.find(params[:id])
  end

  def edit
    @sub_page = SubPage.find(params[:id])
  end

  def create
    @sub_page = SubPage.new(params[:sub_page])
    if @sub_page.save
      flash[:success] = "Done!"
      redirect_to sub_pages_url
    else
      render 'new'
    end
  end

  def update
    @sub_page = SubPage.find(params[:id])
    if @sub_page.update_attributes(params[:sub_page])
      flash[:success] = "Updated!"
      redirect_to sub_pages_url
    else
      render 'edit'
    end
  end

  def destroy
    @sub_page = SubPage.find(params[:id])
    @sub_page.destroy
  end
end
