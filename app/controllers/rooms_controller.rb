class RoomsController < ApplicationController
  def index
    @rooms = Room.order(id: "DESC")
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path
    end
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    redirect_to rooms_path
  end
  private

  def room_params
    params.permit(:image, :beside_id, :vertical_id, :message)
  end
end
