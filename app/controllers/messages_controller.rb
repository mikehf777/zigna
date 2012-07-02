class MessagesController < ApplicationController
  def new
    @message = Message.new
     
  end

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      # TODO send message here
      NotificationsMailer.new_message(@message).deliver
      flash[:success] = "Gracias por contactarnos."
      redirect_to contact_path
    else
      flash.now.alert = "Please fill all fields."
      render :new
    end
  end
end  