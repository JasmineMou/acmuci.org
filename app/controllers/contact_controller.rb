class ContactController < ApplicationController
  def show
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(email_params)
    if @feedback.valid?
      OrganizationMailer.deliver_feedback({from: @feedback.email, subject: @feedback.name}, @feedback.message)
      redirect_to action: 'show'
    else
      render action: 'show'
    end
  end

  private
  def email_params
    params.require(:send).permit(:name, :email, :message)
  end
end
