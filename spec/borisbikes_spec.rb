require 'borisbikes'

describe DockingStation do
  docking_station = DockingStation.new
  # subject {docking_station}
    # it { is_expected.to respond_to(:release_bike) }
  it "should respond to release bike" do
    expect(docking_station).to respond_to(:release_bike)
  end
end
