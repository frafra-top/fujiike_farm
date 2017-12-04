class PurchaseHistoriesController < ApplicationController
  def index
    @purchases = PurchaseHistory.order("created_at DESC").page(params[:page])
  end

  def edit
    @purchase = PurchaseHistory.find(params[:id])
  end

  def update
    @purchase = PurchaseHistory.find(params[:id])
    @purchase.assign_attributes(purchase_params)
    if @purchase.save
      redirect_to user_path(@purchase.user), notice: "ステータスを更新しました"
    else
      render "edit"
    end
  end

  private
    def purchase_params
      params.require(:purchase_history).permit(:status)
    end
end
