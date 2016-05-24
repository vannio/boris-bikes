require 'docking_station'

describe DockingStation do
  docking_station = DockingStation.new
  bike = docking_station.release_bike
  # subject {docking_station}
    # it { is_expected.to respond_to(:release_bike) }
  it "should respond to release bike" do
    expect(docking_station).to respond_to(:release_bike)
  end

   it "should expect the bike to be working" do
    expect(bike).to respond_to(:working?)
  end
 end
