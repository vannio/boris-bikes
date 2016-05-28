require 'bike'

describe Bike do
	it 'checks if bike is working' do
		expect(subject).to respond_to :working?
	end

  it 'checks if a bike is broken' do
		subject.report_broken
    expect(subject.working?).to eq false
  end

	describe '#fix_bike' do
		it 'fixes the bike' do
			expect(subject.fix_bike).to eq subject.working?
		end
	end

end
