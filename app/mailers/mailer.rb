class Mailer < ActionMailer::Base
  default from: 'team@weinexoten.com',
    to: 'team@weinexoten.com',
    subject: 'Weinexoten: Neuer Prelaunch-Subscriber'

  def prelaunch_email(subscriber)
    @subscriber = subscriber
    mail
  end
end
