class ContactController < ApplicationController
  def index
    @feedback = Feedback.new
  end

  def send_email
    @feedback = Feedback.new(email_params)
    if @feedback.valid?
      OrganizationMailer.deliver_feedback({from: @feedback.email, subject: @feedback.name}, @feedback.message)
      redirect_to action: 'index'
    else
      render action: 'index'
    end
  end

  private
  def email_params
    params.require(:send).permit(:name, :email, :message)
  end
end
