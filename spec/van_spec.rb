require 'van'

describe Van do
  describe '#load_bikes' do
    it 'loads an array of bikes' do
      bikes = [double(:bike, :working? => false)]
      expect(subject.load_bikes(bikes)).to eq bikes
    end
  end

  # describe '#deliver_bikes' do
  #   it 'delivers bikes to a destination' do
  #     bikes = [double(:bike, :working? => false)]
  #     subject.load_bikes(bikes)
  #     expect(subject.deliver_bikes("London")).to eq bikes
  #   end
  #
  #   it 'delivers bikes to a garage' do
  #     bikes = [double(:bike, :working? => false)]
  #     van = double(:van, :cargo => bikes)
  #     garage = double(:garage, :inventory => [])
  #     expect(subject.deliver_bikes(garage)).to eq bikes
  #   end
  # end
end
