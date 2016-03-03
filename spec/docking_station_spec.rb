require 'docking_station'

describe DockingStation do
  describe '#release_bike'do
    it "will respond to release_bike" do 
       expect(subject).to respond_to(:release_bike) 
    end
  end
end
