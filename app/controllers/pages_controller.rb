class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def nested
    @page = Page.find(params[:id])
    @nested_page = Page.find(params[:nested_id])
  end

  def deep_nested
    @page = Page.find(params[:id])
    @nested_page = Page.find(params[:nested_id])
    @deep_nested_page = Page.find(params[:nested_page_id])
  end

end
