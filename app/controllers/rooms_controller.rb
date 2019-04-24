class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
    #binding.pry
    @room = Room.find(params[:id])
    @messages = @room.messages.recent.limit(5).reverse
  end
end
