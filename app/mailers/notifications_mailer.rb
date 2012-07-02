class NotificationsMailer < ActionMailer::Base

  default :from => "zignacreativa@gmail.com"
  default :to => "info@zignacreativa.com"

  def new_message(message)
    @message = message
    mail(:subject => "[www.zignacreativa.com] #{message.asunto}")
  end

end