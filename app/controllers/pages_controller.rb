class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @categories = Category.all
    @boats = Boat.last(3).to_a
  end

end
