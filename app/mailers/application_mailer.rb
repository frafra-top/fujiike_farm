class ApplicationMailer < ActionMailer::Base
  default from: 'masashi.fujiike@gmail.com'
  default to: 'masashi.fujiike@gmail.com'
  layout 'mailer'
end
