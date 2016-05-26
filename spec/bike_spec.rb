require 'bike'

describe Bike do

  it "should respond to working?" do
    expect(subject).to respond_to(:working?)
  end

  it 'is working' do
    bike = Bike.new
    expect(bike.working?).to eq true
    bike.status = false
    expect(bike.working?).to eq false
  end

end
