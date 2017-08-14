class BoatsController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    @boats = Boat.all
  end

end
