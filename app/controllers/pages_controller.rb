class PagesController < ApplicationController
  def index
    @page = Page.find_by(name: params[:name])
  end
end
