require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike)}

  describe '#release_bike' do
    subject {DockingStation.new.release_bike}
    it  {is_expected.to be_a Bike}
    it {is_expected.to be_working}
  end
end
