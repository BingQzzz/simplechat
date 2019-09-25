class RoomsChannel < ApplicationCable::Channel
  def subscribed
    p "=====in subscribed"
    p params
    stream_from "room"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
    ActionCable.server.broadcast("room_#{params[:room]}", data)
  end
end
