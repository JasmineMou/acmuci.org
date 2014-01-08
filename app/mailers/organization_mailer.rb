class OrganizationMailer < ActionMailer::Base
  default from: 'unknown@uci.edu'
  default to: 'contact@acmuci.com'

  def feedback(headers, message)
    @message = message
    mail(headers)
  end
end
