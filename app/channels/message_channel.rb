class MessageChannel < ApplicationCable::Channel
  def subscribed
    stream_from "messages"
  end
  def unsubscribed
  end
  def speak(data)
    Message.create! content: data["message"]
  end
end
