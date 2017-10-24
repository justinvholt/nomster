class NotificationMailer < ApplicationMailer
  default from: "no-replay@nomsterapp.com"
  
  def comment_added
    mail(to: "justinvholt@gmail.com", 
         subject: "Nomster: A comment has been added to your place")
  end
end
