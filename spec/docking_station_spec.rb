require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike)}
  it { is_expected.to respond_to(:is_empty?)}
  describe '#release_bike' do

    it "raises error when there are no bikes at the station" do
      expect{subject.release_bike}.to raise_error("There are no bikes available")
    end

    it "releases a bike after a bike has been docked" do
        subject.dock_bike(Bike.new)
       expect(subject.release_bike).to be_a Bike

    end
     # it  {is_expected.to be_a Bike}
    it  "releases a bike that is working" do
        subject.dock_bike(Bike.new)
        expect(subject.release_bike).to be_working
    end
   # it {is_expected.to be_working}

  end
  describe '#dock_bike' do
    it "raises error when station is full (capacity:20)" do
      20.times { subject.dock_bike(Bike.new) }
      expect{subject.dock_bike(Bike.new)}.to raise_error("There are no spaces available")
    end
    it "responds to method call of dock_bike" do
      expect(subject).to respond_to(:dock_bike).with(1).argument
    end
    it "when we dock a bike it increases the array by 1" do
      original_size = subject.bikes.size
      subject.dock_bike(Bike.new)
      expect(original_size).to eq (subject.bikes.size - 1)
    end
  end
  describe '#is_empty?' do
    it {expect(subject.is_empty?).to eq true}

  end


end
