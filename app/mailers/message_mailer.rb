class MessageMailer < ApplicationMailer

  def new_message(message)
    @message = message
    mail to: "events@venetianbanquethall.com", subject: "#{message.name} messaged Venetian"
  end
end
