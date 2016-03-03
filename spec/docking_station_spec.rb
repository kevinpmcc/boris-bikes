require 'docking_station'

describe DockingStation do
   let(:bike_instance) { Bike.new }
   let(:parked_bike) { subject.park_bike(bike_instance) }

  
  describe "#bike" do
    it "can view a bike that has been parked in a docking station" do
        expect(subject.bike).to eq parked_bike
    end
  end


  describe '#release_bike' do

    it { is_expected.to respond_to(:release_bike)  }

    it "raises an error when there are no bikes in the docking station" do
       expect { subject.release_bike.class }.to raise_error "NO BIKES"
    end

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
      expect(subject.park_bike(bike_instance)).to eq bike_instance
    end

  end

  
end
