class PagesController < ApplicationController

  def index
    @rti_requests = RtiRequest.trending.page(params[:page])
    render "index"
  end

end
