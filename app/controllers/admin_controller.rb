class AdminController < ApplicationController
  before_action :correct_user, only: [:index]

  def index
  end

  private
	  def correct_user
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
