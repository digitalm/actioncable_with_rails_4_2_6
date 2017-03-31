class Message < ActiveRecord::Base
  after_commit :broadcast_message, on: :create

  def broadcast_message
    MessageBroadcastJob.perform_later self
  end
end
