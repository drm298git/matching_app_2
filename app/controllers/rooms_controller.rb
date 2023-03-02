class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new
    if room.save
      flash[:notice] = "Room created successfully"
      redirect_to:rooms
    else
      render "new"
    end
  end


  private
  def room_params
    params.require(:room).permit(:room_name, :room_detail, :room_1day_payment, :room_adress)
  end

end
