class MessagesController < ApplicationController
  def new
    @message = Message.new
     @titulo="CONTACTO"
  end

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      # TODO send message here
      flash[:success] = "Gracias por contactarnos."
      redirect_to contact_path
    else
      render :action => 'new'
    end
  end
end  