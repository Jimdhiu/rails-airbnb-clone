class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user_id: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
  end


  def create
    @booking = Booking.new()
    @booking.user = current_user
    @booking.boat = Boat.find(params[:boat_id])
    @booking.save
    render :show
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def booking_params
    params.require(:booking).permit(:boat_id)
  end


end
