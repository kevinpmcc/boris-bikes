require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike)}

  describe '#release_bike' do
    subject {DockingStation.new.release_bike}
    it  {is_expected.to be_a Bike}
    it {is_expected.to be_working}
  end
  describe '#dock_bike' do
    it "responds to method call of dock_bike" do
      expect(subject).to respond_to(:dock_bike)
    end
    it "changes bike_docked to true" do
      #subject.dock_bike
      expect(subject.bike_docked).to be true
    end
  end

end
