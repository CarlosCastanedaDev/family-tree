class ContactFormsController < ApplicationController
  before_action { authorize(@contact || ContactForm) }

  def create
    name = params[:name]
    email = params[:email]
    message = params[:message]
    ApplicationMailer.contact_form(name, email, message).deliver_now
    redirect_to root_path, notice: 'Your message was sent successfully.'
  end

  def contact_us
    render "layouts/contact_us"
  end

  private

  def contact_form_params
    params.require(:contact_form).permit(:name, :email, :message)
  end
end