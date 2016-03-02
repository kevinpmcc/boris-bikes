require './lib/bike.rb'

class DockingStation
  attr_accessor :bike

  def initialize
    @bike = Bike.new
   # @station = []
  end

  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    bike
   # @station << bike
  end
end
