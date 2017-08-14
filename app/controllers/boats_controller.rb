class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :show]

  def new
     @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.save
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new
    end
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :description, :category_id, :address, :capacity, :price, :caution, :size, :horse_power)
  end


end
