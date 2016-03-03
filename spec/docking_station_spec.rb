require 'docking_station'

describe DockingStation do
  describe '#release_bike' do
    it { is_expected.to respond_to(:release_bike)  }
  
  #  it "releases a bike that is an instance of bike class"do
    #  expect(subject.release_bike.class).to eq Bike
    it { (is_expected.release_bike.class).to eq Bike }
  end
  


end
