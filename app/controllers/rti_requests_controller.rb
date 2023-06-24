class RtiRequestsController < ApplicationController
 include UrlTokenableController

  def show
    # @rti_request = RtiRequest.find_by_url_token(params[:id])
    @rti_request = search_by_url_token(RtiRequest.name.classify.constantize, params)
    if !@rti_request.nil?
      impressionist(@rti_request, "message", unique: [:session_hash])
      #@rti_request.touch
    else
      raise ActiveRecord::RecordNotFound
      # raise ActionController::RoutingError.new('Not Found')
    end
  end

  def recent
    @rti_requests = RtiRequest.recent.page(params[:page])
    render "pages/index"
  end

  def top_viewed
    @rti_requests = RtiRequest.top_viewed.page(params[:page])
    render "pages/index"
  end

  def rssFeed
   @posts= RtiRequest.recent.limit(15)
   respond_to do |format|
    format.atom {render layout:false }
   end
  end

end
