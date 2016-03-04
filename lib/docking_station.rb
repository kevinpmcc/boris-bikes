class DockingStation

  attr_reader :capacity
  attr_reader :bikes

  DEFAULT_CAPACITY = 20
  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

   def capacity
    @capacity
  end

  def release_bike
    raise "NO BIKES" if empty?
    raise "Bike broken MOFO!" unless bikes.last.working == true
    @bikes.pop
  end

  def park_bike(bike, functioning=true)
    raise "NO MORE BIKES PLEASE" if full?
    bike.broken if functioning == false
    @bikes << bike
    @bikes.last
  end

  private
  def full?
    bikes.length >= @capacity
  end
 
  def empty?
   @bikes.empty?
  end

 
end
