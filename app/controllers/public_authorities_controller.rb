class PublicAuthoritiesController < ApplicationController

  def show
    @public_authority = PublicAuthority.find_by_name(params[:id])
    if !@public_authority.nil?
      @rti_requests = @public_authority.rti_requests.recent.page(params[:page])
    else
      raise ActiveRecord::RecordNotFound
    end
    render "pages/index"
  end

end
