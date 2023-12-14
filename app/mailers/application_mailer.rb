class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout "mailer"

  def failure(error)
    mail to: 'admin@rails-shop.com', body: "There was an error in your application: #{error}"
  end
end
