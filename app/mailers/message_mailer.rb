class MessageMailer < ApplicationMailer

  def new_message(message)
    @message = message
    mail to: message.email, subject: "Account activation"
  end
end
