class RoomsController < ApplicationController
  before_action :authenticate_user!

  def show
    #binding.pry
    @messages = Message.recent.limit(5).reverse
  end
end
