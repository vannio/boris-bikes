require 'docking_station'

describe DockingStation do

  describe "#dock" do
    it "should respond to docking one bike" do
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it "should show a bike that has been docked" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes.last).to eq bike
    end

    it "should fail to dock a bike if the docking station is full" do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
      expect{ subject.dock(Bike.new) }.to raise_error("Docking station is full")
    end

    it "should accept #{DockingStation::DEFAULT_CAPACITY} bikes into the docking station" do
      expect{ DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }}.not_to raise_error
    end

  end

  describe "#release" do
    it "should respond to release bike" do
      expect(subject).to respond_to(:release)
    end

    it "should not release a bike if empty and raise an error" do
      expect{subject.release}.to raise_error("Nothing to release")
    end
  end

 end
