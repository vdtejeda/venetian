class PagesController < ApplicationController
  def home
     @message = Message.new
  end
  def gallery
  end
end
