class CatcherController < ApplicationController
  def index
     @send = params[:send]
     @was_sent = "was not sent"
     if(@send == "true")
       UserMailer.alert_email.deliver
       @was_sent = "was sent!"

     end
  end

end
