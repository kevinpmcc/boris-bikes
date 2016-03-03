require 'docking_station'

describe DockingStation do
   let(:parked_bike) { subject.park_bike(Bike.new) }


  describe "#bike" do
    it "can view a bike that has been parked in a docking station" do
      parked_bike
      expect(subject.bikes).to include(parked_bike)
    end
  end


  describe '#release_bike' do

    it { is_expected.to respond_to(:release_bike)  }

    it "raises an error when there are no bikes in the docking station" do
       expect { subject.release_bike.class }.to raise_error "NO BIKES"
    end
        
    describe 'releases a bike' do
        before (:each) { parked_bike }
      it "releases a bike that is an instance of bike class" do
       # parked_bike
        expect(subject.release_bike.class).to eq Bike
      end

    it 'expects released bike to be working' do
     # parked_bike
      expect(subject.release_bike.working?).to eq true
    end
    end
  end

  describe '#park_bike' do

    it { is_expected.to respond_to(:park_bike).with(1).argument }
    it { is_expected.to respond_to(:park_bike).with(2).arguments }
    it 'returns bike that it has received' do
      bike = Bike.new
      expect(subject.park_bike(bike)).to eq bike 
    end

    it 'raises an error "NO MORE BIKES PLEASE" when the station is full(capacity:20)' do
      DockingStation::DEFAULT_CAPACITY.times{subject.park_bike(Bike.new)}
      expect { parked_bike }.to raise_error "NO MORE BIKES PLEASE"
    end
    

  end

  describe '#initialize' do
    it 'will accept an argument which it will set as DEFAULT_CAPACITY'do
      station = DockingStation.new 9
      expect(station.capacity).to eq 9
    end
  end
  
  describe '#working' do
    it 'will return false for working if a bike has been declared broken when returned' do
     station = subject
     broken_bike = Bike.new
     station.park_bike(broken_bike, false)
     expect(broken_bike.working?).to eq false
    end
  end
    it 'will return true for working if bike is returned and not declared broken' do
      station = subject
      broken_bike = Bike.new
      station.park_bike(broken_bike)
      expect(broken_bike.working?).to eq true
  end
end
