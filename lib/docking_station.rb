require './lib/bike.rb'

class DockingStation
  attr_reader :bike

  def initialize
  #  @bike = Bike.new
    @station = []
  end
  
  def is_empty?
    @station.empty?
  end
  
  def release_bike
    if is_empty?
      raise "There are no bikes available"
    end
    Bike.new 
  end

  def dock_bike(bike)
    @station << bike
    @bike = bike
  end
end
