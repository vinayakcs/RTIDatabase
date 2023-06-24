class FeedbacksController < ApplicationController

  def new
    @feedback = Feedback.new
  end

  def create
    status = verify_google_recptcha(Rails.application.secrets.RECAPTCHA_SECRET_KEY,params["g-recaptcha-response"])
    @feedback = Feedback.new(feedback_params)
    if !status
      flash[:notice] = "Incorrect ReCaptcha"
      render action: 'new'
    else
      if @feedback.save
        flash[:notice] = "Thanks for the Feedback"
        redirect_to root_path
      else
        render action: 'new'
      end
    end
  end


  private

  def feedback_params
    params.require(:feedback).permit(:name, :email, :mobile, :content)
  end

  def verify_google_recptcha(secret_key,response)
    status = `curl "https://www.google.com/recaptcha/api/siteverify?secret=#{secret_key}&response=#{response}"`
    ##     logger.info "---------------status ==> #{status}"
    hash = JSON.parse(status)
    hash["success"] == true ? true : false
  end

end
