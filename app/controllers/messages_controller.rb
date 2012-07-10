class MessagesController < ApplicationController
  def new
    @message = Message.new
     @titulo="CONTACTO"
  end

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      # TODO send message here
      flash[:notice] = "Gacias por contactarnos."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
end  