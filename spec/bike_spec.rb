#describe the bike class

require 'bike'

describe Bike do
	it 'checks if bike is working' do
		expect(subject).to respond_to :working?
	end

  it 'checks if a bike is broken' do
		subject.report_broken
    expect(subject.working?).to eq false
  end
end
