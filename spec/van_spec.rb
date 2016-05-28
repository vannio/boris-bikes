  require 'van'

describe Van do
  describe '#load_bikes' do
    let(:bike) { double(:bike, :working? => false) }

    it 'loads an array of bikes' do
      bikes = [bike, bike]
      expect(subject.load_bikes(bikes)).to eq bikes
    end

    it 'releases an array of bikes' do
      bikes = [bike, bike]
      subject.load_bikes(bikes)
      expect(subject.unload_bikes).to eq bikes
    end
  end

end
