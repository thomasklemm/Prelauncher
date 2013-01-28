class SubscribersController < ApplicationController
  def create
    subscriber = Subscriber.find_or_initialize_by(email: subscriber_params[:email])

    # Send success email directly
    if subscriber.new_record? and subscriber.save
      Mailer.prelaunch_email(subscriber).deliver
    end

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js   { render json: {} }
    end
  end

private

  def subscriber_params
    params[:subscriber].slice(:email)
  end
end
