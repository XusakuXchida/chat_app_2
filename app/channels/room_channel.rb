class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    #binding.pry
    Message.create!(content: data['message'], user_id: current_user.id, room_id: 1)
  end
end
