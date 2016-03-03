require 'docking_station'

describe DockingStation do
  
  
  describe "#bike" do
    it "can view a bike that has been parked in a docking station" do
      bike_instance = Bike.new
      parked_bike = subject.park_bike(bike_instance)
      expect(subject.bike).to eq parked_bike
    end
  end


  describe '#release_bike' do

    it { is_expected.to respond_to(:release_bike)  }
    it "releases a bike that is an instance of bike class" do
      expect(subject.release_bike.class).to eq Bike
    end

    it 'expects released bike to be working' do
      expect(subject.release_bike.working?).to eq true
    end

  end

  describe '#park_bike' do

    it { is_expected.to respond_to(:park_bike).with(1).argument }
    it 'returns bike that it has received' do
      bike = Bike.new
      expect(subject.park_bike(bike)).to eq bike
    end

  end

  
end
