class UsersController < ApplicationController
	before_action :correct_admin, only: [:index]

  def index
    @users = User.where(admin: false)
  end

  def show
    @user = User.find(params[:id])
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
end
