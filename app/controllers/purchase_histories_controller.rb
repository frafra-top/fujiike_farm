class PurchaseHistoriesController < ApplicationController
  before_action :correct_user, only: [:new, :create, :edit, :update]
  before_action :correct_admin, only: [:index]
  
  def index
    @purchases = PurchaseHistory.order("created_at DESC").page(params[:page])
  end

  def new
    @item = Item.find(params[:item_id])
    @purchase = PurchaseHistory.new
  end

  def create
    @item = Item.find(params[:item_id])
    @purchase = PurchaseHistory.new(purchase_params)
    @purchase.user_id = current_user.id
    @purchase.item_id = @item.id
    if @purchase.save
      PurchaseMailer.purchase_mail(@purchase).deliver
      redirect_to item_applied_path(@item, @purchase)
    else
      render :new
    end
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

  def applied
    @item = Item.find(params[:item_id])
    @purchase = PurchaseHistory.find(params[:id])
  end

  private
    def correct_user
      if user_signed_in?
      else
        redirect_to new_user_session_path
      end
    end

    def correct_admin
      if user_signed_in?
        if current_user.admin?
        else
          redirect_to items_path        
        end
      else
        redirect_to new_user_session_path
      end
    end

    def purchase_params
      params.require(:purchase_history).permit(:delivery_name, :delivery_postal_code, :delivery_address, :status, :user_id, :item_id)
    end
end
