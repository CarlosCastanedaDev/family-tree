class ApplicationMailer < ActionMailer::Base
  default from: "carlos@nemin.dev"
  layout "mailer"

  def signup_email
    @user = params[:user] 
    mail(to: @user.email, subject: 'Welcome to the Castañeda family tree website!') 
  end 

  def contact_form(name, email, message)
    @name = name
    @email = email
    @message = message
    mail(to: 'carlos@nemin.dev', subject: 'New Contact Form Submission')
  end
end
