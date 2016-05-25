require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to (:release_bike) }

  it 'release a bike' do
    expect(subject.release_bike).to_not be_nil
  end
end
