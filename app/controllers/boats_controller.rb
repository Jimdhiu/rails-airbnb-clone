class BoatsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:show, :index]

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

  def index
    @boats = []
    if params[:search]
      @boats = Boat.where(search_params)
    end
    if @boats.empty?
      @boats = Boat.all
      @message = "Aucun résultat pour votre recherche. Voici la liste de tous les bateaux disponibles"
    end
  end


  def show
    @boat = Boat.find(params[:id])
    @booking = Booking.new
  end

  private

  def search_params
    params.require(:search).permit(:address, category_id: [])
  end

  def boat_params
    params.require(:boat).permit(:name, :description, :category_id, :address, :capacity, :price, :caution, :size, :horse_power)
  end

end
