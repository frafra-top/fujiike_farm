class UsersController < ApplicationController
	before_action :correct_admin, only: [:index]

  def index
    @users = User.where(admin: false)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    #binding.pry
    @user.assign_attributes(user_params)
    #binding.pry
    @user.id = params[:id]
    if @user.save
      redirect_to users_path, notice: "ユーザー情報を更新しました。"
    else
      render "edit"
    end
  end

  private
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

    def user_params
      params.require(:user).permit(
        :name,
        :contact_name,
        :email,
        :contact_postal_code,
        :contact_address,
        :phone
      )
    end
end
