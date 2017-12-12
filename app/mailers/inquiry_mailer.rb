class InquiryMailer < ActionMailer::Base
  default from: "programmingbenkyo@gmail.com"
  default to: "programmingbenkyo@gmail.com"
 
  def received_email(inquiry)
    @inquiry = inquiry
    mail reply_to: @inquiry.email,
         subject:  'お問い合わせを承りました'
  end
 
end