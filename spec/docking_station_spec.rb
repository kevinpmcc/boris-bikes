require 'docking_station'

describe DockingStation do
   let(:parked_bike) { subject.park_bike(double(:bike)) }
   let(:bike) { double :bike }

  describe "#bike" do
    it "1 can view a bike that has been parked in a docking station" do
      parked_bike
      expect(subject.bikes).to include(parked_bike)
    end
  end


  describe '#release_bike' do

    it { is_expected.to respond_to(:release_bike)  }

    it "2 raises an error when there are no bikes in the docking station" do
       expect { subject.release_bike }.to raise_error "NO BIKES"
    end
        
    describe 'releases a bike' do
        before (:each) { parked_bike }

    it '4 expects released bike to be working' do
      subject.park_bike(bike)
      allow(bike).to receive(:working).and_return(true)
      
      expect(subject.release_bike.working).to eq true
    end
    it '4.1 will raise an error if bike is asked to release a broken bike' do
    station = DockingStation.new
    station.park_bike(bike)
    allow(bike).to receive(:working).and_return(false)
    expect{station.release_bike}.to raise_error "Bike broken MOFO!"
    
    end
  end

  describe '#park_bike' do

    it { is_expected.to respond_to(:park_bike).with(1).argument }
    it { is_expected.to respond_to(:park_bike).with(2).arguments }
    it '5 returns bike that it has received' do
      bike = double(:bike)
      expect(subject.park_bike(bike)).to eq bike 
    end

    it '6 raises an error "NO MORE BIKES PLEASE" when the station is full(capacity:20)' do
      DockingStation::DEFAULT_CAPACITY.times{subject.park_bike(double(:bike))}
      expect { parked_bike }.to raise_error "NO MORE BIKES PLEASE"
    end
    

  end

  describe '#initialize' do
    it '7 will accept an argument which it will set as DEFAULT_CAPACITY'do
      station = DockingStation.new 9
      expect(station.capacity).to eq 9
    end
  end
  end
end
