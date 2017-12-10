class InquiryMailer < ActionMailer::Base
  default from: "藤池ファームのメールアドレス"
  default to: "藤池ファームのメールアドレス"
 
  def received_email(inquiry)
    @inquiry = inquiry
    mail reply_to: @inquiry.email,
         subject:  'お問い合わせを承りました'
  end
 
end