class MessagesController < ApplicationController
  def new
     @message = Message.new
  end

   def create
     @message = Message.new(message_params)

     if @message.valid?
       MessageMailer.new_message(@message).deliver_now
       flash[:success] = "Your message has been sent."
       redirect_to '/'
     else
       render 'pages/home'
     end
   end

  private

   def message_params
     params.require(:message).permit(:name, :email, :phone, :content)
   end
end
