require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike)}

  describe '#release_bike' do
    subject {DockingStation.new.release_bike}
  
    it "raises error when there are no bikes at the station" do
      is_empty? = true
      expect(subject).to raise_error("There are no bikes available")
  end

      it  {is_expected.to be_a Bike}
    it {is_expected.to be_working}
    
  end
  describe '#dock_bike' do
    it "responds to method call of dock_bike" do
      expect(subject).to respond_to(:dock_bike).with(1).argument
    end
    it "when we dock a bike it returns that bike" do
      docking_a_bike  = subject.dock_bike(subject.bike) 
      expect(docking_a_bike).to eq subject.bike
    end
  end

 

end
