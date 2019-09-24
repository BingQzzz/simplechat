class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.create(message_params)
    @message.user = current_user
    @room = Room.find(params[:room_id])
    @message.room = @room
    if @message.save
      redirect_to room_path(@room)
    else
      raise
      render 'new'
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
