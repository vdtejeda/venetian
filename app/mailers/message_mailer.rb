class MessageMailer < ApplicationMailer

  def new_message(message)
    @message = message
    mail to: "venetianbanquethall@gmail.com", subject: "#{message.name} messaged Venetian"
  end
end
