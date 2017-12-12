class NotificationController < ApplicationController
  def make_mail
    # 入力画面を表示
    @notification = Notification.new
    @notification.email = params[:email]
    render :action => 'make_mail'
  end

  def make_mails
    # 入力画面を表示
    @notification = Notification.new
    render :action => 'make_mails'
  end

  def confirm_mail
    # 入力値のチェック
    @notification = Notification.new(notification_params)
    if @notification.valid?
      # OK。確認画面を表示
      render :action => 'confirm_mail'
    else
      # NG。入力画面を再表示
      render :action => 'make_mail'
    end
  end

  def confirm_mails
    # 入力値のチェック
    @notification = Notification.new(notification_params)
    @users = User.where(admin: false)
    if @notification.valid? && (@users != nil)
      # OK。確認画面を表示
      render :action => 'confirm_mails'
    else
      # NG。入力画面を再表示
      render :action => 'make_mails'
    end
  end

  def send_mail
    @notification = Notification.new(notification_params)
    if params[:back]
      render :action => 'make_mail'
    else
      NotificationMailer.send_to_one(@notification).deliver
      # 完了画面を表示
      render :action => 'send_mail'
    end
  end

  def send_mails
    @notification = Notification.new(notification_params)
    @users = User.where(admin: false)
    if params[:back]
      render :action => 'make_mails'
    else
      NotificationMailer.send_to_all(@notification, @users).deliver
      # 完了画面を表示
      render :action => 'send_mails'
    end
  end

  private
  def notification_params
    # submitしたデータのうち、Model作成に必要なものを
    # permitの引数に指定する
    params.require(:notification).permit(:email, :subject, :message)
  end
end
