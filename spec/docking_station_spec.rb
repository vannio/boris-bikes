require 'docking_station'

describe DockingStation do
  ds = DockingStation.new
  bike = ds.release_bike

  it "should respond to release bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it "should expect the bike to be working" do
    expect(bike).to respond_to(:working?)
  end

  it "should respond to docking one bike" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "should show a bike that has been docked" do
    docked_bike = ds.dock(bike)
    expect(ds.bike).to eq docked_bike
  end

 end
