class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room

  after_create :broadcast_message
  # ...

  def broadcast_message
    ActionCable.server.broadcast("room", {
      # message_partial: ApplicationController.renderer.render(
      #   partial: "messages/message",
      #   locals: { message: self, user_is_messages_author: false}
      # ),
      message: self,
      current_user_id: user.id
    })
  end
end
