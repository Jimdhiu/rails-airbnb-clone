class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def new
     @boat = Boat.new
     @categories = Category.all
  end

  def create
    @boat = current_user.boats.build(boat_params)
    @boat.save
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new
    end
  end



  def show
    @boat = Boat.find(params[:id])
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :description, :category_id, :address, :capacity, :price, :caution, :size, :horse_power)
  end


end
