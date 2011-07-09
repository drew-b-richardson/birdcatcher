class UserMailer < ActionMailer::Base
  default :from => "drew.b.richardson@gmail.com"

  def alert_email
    @url = "http://quiet-mist-161.heroku.com/";
    mail(:to => "drew.b.richardson@gmail.com",
         :subject => "captured!")
  end

end
