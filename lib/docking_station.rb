require './lib/bike.rb'

class DockingStation
  attr_reader :bike_docked
  def release_bike
    Bike.new
  end

  def dock_bike
    @bike_docked = true
  end
end
