class RoomsController < ApplicationController
  before_action :authenticate_user!

  def show
    #binding.pry
    @messages = Message.all
  end
end
