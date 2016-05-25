require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to (:release_bike) }
  it { is_expected.to respond_to(:docking_bike).with(1).argument }
  it 'release a bike' do
    expect(subject.release_bike).to_not be_nil
  end
  it { is_expected.to respond_to(:bike)}
  it 'docks something' do
    bike = Bike.new
    subject.docking_bike(bike)
    expect(subject.bike).to eq bike
  end

end
