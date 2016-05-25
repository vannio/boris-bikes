require 'docking_station'

describe DockingStation do

  it "should respond to release bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it "should respond to docking one bike" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "should show a bike that has been docked" do
  	bike = Bike.new
  	subject.dock(bike)
  	expect(subject.bike).to eq bike
  end

  it "should not release a bike if empty and raise an error" do
    expect{subject.release_bike}.to raise_error("Nothing to release")
  end

  it "should fail to dock a bike if the docking station is full" do
    bike = Bike.new
    subject.dock(bike)
    bike2 = Bike.new
    expect{subject.dock(bike2)}.to raise_error("Docking station is full")
  end
 end
