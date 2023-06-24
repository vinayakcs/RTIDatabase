module UrlTokenableController
  extend ActiveSupport::Concern

  def search_by_url_token(model, params)
    @obj = nil
    # puts params[:id]
    if params[:id].length > 0
      @obj = model.find_by_url_token(params[:id].split("-")[0])
    end
    return @obj
  end

end
