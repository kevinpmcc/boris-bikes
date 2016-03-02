require './lib/bike.rb'

class DockingStation
  attr_reader :bike

  #def initialize
  #  @bike = Bike.new
  #  #@station = []
  #end
  def is_empty?
    true
  end
  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    #@station << bike
    @bike = bike
  end
end
