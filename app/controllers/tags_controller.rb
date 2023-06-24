class TagsController < ApplicationController

  def show
    @tag = Tag.find_by_name(params[:id])
    if !@tag.nil?
      @rti_requests = @tag.rti_requests.recent.page(params[:page])
    else
      raise ActiveRecord::RecordNotFound
    end
    render "pages/index"
  end

end
