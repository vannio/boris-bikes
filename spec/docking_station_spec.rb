require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to (:release_bike) }
  it { is_expected.to respond_to(:docking_bike).with(2).arguments }

  it 'should set a capacity if given argument otherwise default to 20' do
    expect(DockingStation.new(50).capacity).to eq 50
    expect(DockingStation.new.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe '#release_bike' do
      it 'release a bike' do
        expect(subject.release_bike).to be_nil
        expect { raise "sorry, no bikes" }.to raise_error ("sorry, no bikes")
      end
  end

  describe '#docking_bike' do
      it 'stops docking bikes' do
        DockingStation::DEFAULT_CAPACITY.times { subject.docking_bike Bike.new, true }
        expect {raise "sorry, dock is full"}.to raise_error ("sorry, dock is full")
      end

      it "reports a bike's status when docked" do
        expect(subject.docking_bike(Bike.new, false)).to eq "Docked bike is not working"
        expect(subject.docking_bike(Bike.new, true)).to eq "Docked bike is working fine!"
      end
  end

end
