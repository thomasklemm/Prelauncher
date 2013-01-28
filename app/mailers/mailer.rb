class Mailer < ActionMailer::Base
  # TODO: SET YOUR MAILER DEFAULTS
  default from: 'prelauncher@tklemm.eu',
    to: 'prelauncher@tklemm.eu',
    subject: 'Prelauncher: New subscriber'

  def prelaunch_email(subscriber)
    @subscriber = subscriber
    mail
  end
end
