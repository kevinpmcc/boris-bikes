require './lib/bike.rb'

class DockingStation
  attr_reader :bikes

  def initialize
  #  @bike = Bike.new
    @bikes = []
  end

  def is_empty?
    @bikes.empty?
  end

  def release_bike
    if is_empty?
      raise "There are no bikes available"
    end
    @bikes.pop
  end

  def dock_bike(bike)
    raise "There are no spaces available" if @bikes.size > 19
    @bikes <<  bike
  end
end
