class NotificationController < ApplicationController
  def makeone
    # 入力画面を表示
    @notification = Notification.new
    @notification.email = params[:email]
    render :action => 'makeone'
  end

  def makeall
    # 入力画面を表示
    @notification = Notification.new
    render :action => 'makeall'
  end

  def sendone
    # 入力値のチェック
    @notification = Notification.new(notification_params)
    if @notification.valid?
      # OK。メール送信
      NotificationMailer.send_to_one(@notification).deliver
      # 完了画面を表示
      render :action => 'sendone'
    else
      # NG。入力画面を再表示
      render :action => 'makeone'
    end
  end

  def sendall
    # 入力値のチェック
    @notification = Notification.new(notification_params)
    @users = User.where(admin: false)
    if @notification.valid? && (@users != nil)
      # OK。メール送信
      NotificationMailer.send_to_all(@notification, @users).deliver
      # 完了画面を表示
      render :action => 'sendall'
    else
      # NG。入力画面を再表示
      render :action => 'makeall'
    end
  end

  private
  def notification_params
    # submitしたデータのうち、Model作成に必要なものを
    # permitの引数に指定する
    params.require(:notification).permit(:email, :subject, :message)
  end
end
