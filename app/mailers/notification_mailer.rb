class NotificationMailer < ApplicationMailer
  default from: "programmingbenkyo@gmail.com"   # 送信元アドレス

  def send_to_one(notification)
    @notification = notification
    mail to:      @notification.email,
         subject: @notification.subject
  end

  def send_to_all(notification, users)
    @notification = notification
    mail to:      users.map{|u| u.email},
         subject: notification.subject
  end
end
