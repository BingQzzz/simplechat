class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.create(message_params)
    @message.user = current_user
    @room = Room.find(params[:room_id])
    @message.room = @room
    @message.save
    # if !@message.save
    #   # RoomsChannel.broadcast_to(@room, @message)
    #   # ActionCable.server.broadcast(@room, @message)
    #   # render room_path(@room)
    #   render 'new'
    # end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
