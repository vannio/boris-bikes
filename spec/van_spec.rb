require 'van'

describe Van do
  describe '#load_bikes' do
    it 'loads an array of bikes' do
      bikes = [double(:bike, :working? => true)]
      expect(subject.load_bikes(bikes)).to eq bikes
    end
  end
end
