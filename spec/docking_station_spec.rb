require 'docking_station'

describe DockingStation do

  describe '#release_bike' do
    it 'responds to release_bike' do
      expect(subject).to respond_to :release_bike
    end

    it 'releases bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

  	it 'raises error if no bikes available' do
  		expect {subject.release_bike}.to raise_error 'Error. No bikes available'
  	end

    it 'releases the working bike' do
      bike = Bike.new
      bike.report_broken
      subject.dock(bike)
      expect(subject.release_bike).to_not eq bike 
    end
  end

  describe '#dock' do
    it 'responds to docking the bike' do
      expect(subject).to respond_to :dock
    end

    it 'raises error when station is full' do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
      expect {subject.dock(Bike.new)}.to raise_error 'Error: Docking Station Full'
    end

    describe 'DEFAULT_CAPACITY' do
      it 'gives a DEFAULT_CAPACITY of 20' do
        expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
      end
    end
  end

end
