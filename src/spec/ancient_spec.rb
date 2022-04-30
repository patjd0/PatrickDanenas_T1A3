require 'rspec'
require './trivias/ancient'

describe Ancient do
  describe '#run_ancient' do
    it 'returns the "Correct!"' do
      ancient = Ancient.new
      expect(run_ancient).to eql('Correct!')
    end
  end
end
