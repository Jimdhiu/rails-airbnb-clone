class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
  end


  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.boat = Boat.find(params[:boat_id])
    if @booking.save
      redirect_to booking_path(@booking)
    else
      @boat = @booking.boat
      render 'boats/show'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end


  private

  def booking_params
    params.require(:booking).permit(:start_day, :end_day)
  end


end
