class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    message = Message.create!(message_params)
    redirect_to post
  end

  def index
    message = Message.order(:id)
  end

  private

  def message_params
    params.require(:message).permit(:title, :content)
  end
end
