class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room"
  end
  def unsubscribed
  end
  def speak(data)
    Message.create! content: data["message"]
  end
end
