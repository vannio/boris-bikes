require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to (:release_bike) }
  it { is_expected.to respond_to(:docking_bike).with(1).argument }

  describe '#release_bike' do
      it 'release a bike' do
        expect(subject.release_bike).to be_nil
        expect { raise "sorry, no bikes" }.to raise_error ("sorry, no bikes")
      end
  end


  describe '#docking_bike' do
      it 'stops docking bikes' do
        20.times { subject.docking_bike Bike.new }
        expect {raise "sorry, dock is full"}.to raise_error ("sorry, dock is full")
      end
  end
end
