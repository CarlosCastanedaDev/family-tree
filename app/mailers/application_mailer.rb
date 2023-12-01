class ApplicationMailer < ActionMailer::Base
  default from: "carlos@nemin.dev"
  layout "mailer"

  def signup_email
    @user = params[:user] 
    mail(to: @user.email, subject: 'Welcome to the Castañeda family tree website!') 
  end 
end
