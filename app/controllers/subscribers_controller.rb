class SubscribersController < ApplicationController
  def create
    subscriber = Subscriber.create(params[:subscriber])
    # Send email directly
    Mailer.prelaunch_email(subscriber).deliver if subscriber.valid?
  ensure
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js   { render json: {} }
    end
  end
end
