class PurchaseMailer < ApplicationMailer
	def purchase_mail(purchase_history)
    @purchase = purchase_history
    mail reply_to: @purchase.user.email,
         subject:  "#{@purchase.item.name}様のお申し込みを受け付けました。"
  end
end
