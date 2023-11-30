class ContactFormsController < ApplicationController
  before_action { authorize(@contact || ContactForm) }

  def create
    @contact = ContactForm.new()
    @contact.name = params[:name]
    @contact.email = params[:email]
    @contact.message = params[:message]
    if @contact.deliver
      respond_to do |format|
        format.html { redirect_to root_path, notice: "Email sent successfully" }
        format.json { render json: { message: "Email sent successfully"} }
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  def contact_us
    render "layouts/contact_us"
  end

  private

  def contact_form_params
    params.require(:contact_form).permit(:name, :email, :message)
  end
end