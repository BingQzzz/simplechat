p "🐱reading in models/message.rb"

class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room

  after_create :broadcast_message
  # ...
  p '🐶inside message model'

  def broadcast_message
    p '🐶inside broadcast_message method....'

    ActionCable.server.broadcast("room", {
      # message_partial: ApplicationController.renderer.render(
      #   partial: "messages/message",
      #   locals: { message: self, user_is_messages_author: false}
      # ),
      message: self,
      current_user_id: user.id,
      current_user: user.username,
      created_at: self.created_at.strftime("%I:%M %p")
    })
    p '🐶finished ActionCable.server.broadcast'
  end
end
