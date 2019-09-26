p "🐶arrving rooms_channel.rb file"

class RoomsChannel < ApplicationCable::Channel
  p 'inside the RoomsChannel class'

  def subscribed
    p "=====in subscribed"
    p params
    stream_from "room"
  end

  def unsubscribed
    p "=====in unsubscribed"
    # Any cleanup needed when channel is unsubscribed
  end

  # def receive(data)
  #   p "=====in recieve(data)"
  #   ActionCable.server.broadcast("room_#{params[:room]}", data)
  #   p 'I am receiving data in RoomsChannel'
  #   console.log(data)
  # end
end
