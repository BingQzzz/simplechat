class RoomsController < ApplicationController
  before_action :verify_authenticity_token

  def index
    @rooms = Room.all
    @room = Room.new
    @messages = Message.all
    @message = Message.new
  end

  def show
    @room = Room.find(params[:id])
    @message = Message.new
    @messages = Message.where(room_id: @room.id)
  end

  def new
    @room = Room.new
    @message = Message.new
  end

  def create
    @room = Room.create(room_params)
    @room.user = current_user
    if @room.save
      redirect_to rooms_path
    else
      raise
      render 'new'
    end

  end

  private

  def room_params
    params.require(:room).permit(:name)
  end
end
