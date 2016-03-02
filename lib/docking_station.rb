require './lib/bike.rb'

class DockingStation
  attr_reader :bikes

  def initialize

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
    raise "There are no spaces available" if full?
    @bikes <<  bike
  end

  private

  def full?
    @bikes.size > 19
  end
end
