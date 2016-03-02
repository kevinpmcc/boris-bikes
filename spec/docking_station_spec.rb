require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike)}
  it { is_expected.to respond_to(:is_empty?)}
  describe '#release_bike' do
    subject {DockingStation.new.release_bike}

    it "raises error when there are no bikes at the station" do
      expect{subject}.to raise_error("There are no bikes available")
    end

    it "releases a bike after a bike has been docked" do
        bad_name =  DockingStation.new
        bad_name.dock_bike(Bike.new)
       expect(bad_name.release_bike).to be_a Bike

    end
     # it  {is_expected.to be_a Bike}
    it  "releases a bike that is working" do
        bad_name =  DockingStation.new
        bad_name.dock_bike(Bike.new)
        expect(bad_name.release_bike).to be_working
    end
   # it {is_expected.to be_working}

  end
  describe '#dock_bike' do
    it "raises error when station is full" do
      worse_name = DockingStation.new
      worse_name.dock_bike(Bike.new)
      expect{worse_name .dock_bike(Bike.new)}.to raise_error("There are no spaces available")
    end
    it "responds to method call of dock_bike" do
      expect(subject).to respond_to(:dock_bike).with(1).argument
    end
    it "when we dock a bike it returns that bike" do
      docking_a_bike  = subject.dock_bike(subject.bike)
      expect(docking_a_bike).to eq subject.bike
    end
  end
  describe '#is_empty?' do
    it {expect(subject.is_empty?).to eq true}

  end


end
