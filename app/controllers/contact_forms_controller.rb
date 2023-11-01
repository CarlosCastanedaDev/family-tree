class ContactFormsController < ApplicationController
  def create
    @contact = ContactForm.new()
    @contact.name = params[:name]
    @contact.email = params[:email]
    @contact.message = params[:message]
    if @contact.deliver
      format.html { redirect_to root_path, notice: "Email sent successfully" }
      render json: {message: "Email sent successfully"}
    else
      render json: @contact.errors
    end
  end
end