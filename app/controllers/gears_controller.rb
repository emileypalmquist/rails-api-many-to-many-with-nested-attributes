class GearsController < ApplicationController

  def index
    gears = Gear.all
    render json: gears
  end

  def check_gear_status
    gears = Gear.all_formatted
    render json: gears
  end

end
