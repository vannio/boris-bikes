require 'docking_station'

describe DockingStation do
  describe '#release_bike' do
    it 'responds to release_bike' do
      expect(subject).to respond_to :release_bike
    end

    it 'releases bike' do
      bike = double(:bike, :working? => true)
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

  	it 'raises error if no bikes available' do
  		expect {subject.release_bike}.to raise_error 'Error. No bikes available'
  	end

    it 'does not release a broken bike' do
      bike = double(:bike, :working? => false)
      subject.dock(bike)
      expect {subject.release_bike}.to raise_error 'Error. No bikes available'
    end

    it 'releases broken bikes to a van' do
      bike = double(:bike, :working? => false)
      subject.dock(bike)
      expect(subject.release_broken_bikes).to eq [bike]
    end

    it 'empties broken bikes after being released' do
      bike = double(:bike, :working? => false)
      subject.dock(bike)
      subject.release_broken_bikes
      expect(subject.bikes_broken).to eq []
    end

  end

  describe '#dock' do
    it 'responds to docking the bike' do
      expect(subject).to respond_to :dock
    end

    it 'raises error when station is full' do
      bike = double(:bike, :working? => false)
      DockingStation::DEFAULT_CAPACITY.times {subject.dock(bike)}
      expect {subject.dock(bike)}.to raise_error 'Error: Docking Station Full'
    end

    it 'seperates broken and working bikes into different arrays' do
      bike = double(:bike, :working? => true)
      expect(subject.dock(bike)).to eq subject.bikes

      bike_broken = double(:bike, :working? => false)
      expect(subject.dock(bike_broken)).to eq subject.bikes_broken
    end

    describe 'DEFAULT_CAPACITY' do
      it 'gives a DEFAULT_CAPACITY of 20' do
        expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
      end
    end
  end

end
