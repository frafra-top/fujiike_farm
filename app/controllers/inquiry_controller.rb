class InquiryController < ApplicationController
  def new
    @inquiry = Inquiry.new
    render :action => 'new'
  end
 
  def confirm
    @inquiry = Inquiry.new(inquiry_params)

    if @inquiry.valid?
      render :action => 'confirm'
    else
      render :action => 'new'
    end
  end
 
  def sent
    @inquiry = Inquiry.new(inquiry_params)
 
    if params[:back]
      render :action => 'new'
    else
      InquiryMailer.received_email(@inquiry).deliver
      render :action => 'sent'
    end
  end

  private
    def inquiry_params
      params.require(:inquiry).permit(:name, :email, :content)
    end
end