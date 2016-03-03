require './lib/docking_station'
require './lib/bike'

p station =  DockingStation.new

p bike = station.release_bike
p bike.working?
p station.park_bike
