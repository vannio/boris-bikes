require 'docking_station'

describe DockingStation do
  ds = DockingStation.new
  bike = ds.release_bike

  it "should respond to release bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it "should respond to docking one bike" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "should show a bike that has been docked" do
    docked_bike = ds.dock(bike)
    expect(subject.bike).to eq docked_bike
  end

 end
