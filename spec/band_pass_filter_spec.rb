require 'band_pass_filter'

describe BandPassFilter do
  band_pass_filter = BandPassFilter.new([1,2,3,4])
  describe 'band_pass_filter' do
    it 'can store a soundwave array' do
      expect(band_pass_filter.array).to eq([1,2,3,4])
    end
  end

  subject(:band_pass_filter) {described_class.new}
  describe '#check_for_errors' do
    it 'outputs "Error in soundwave" when given ["a"] as input array' do
      expect {band_pass_filter.check_for_errors(["a"])}.to raise_error("Error in soundwave")
    end
    it 'does not raise error when given [1,2] as input array' do
      expect {band_pass_filter.check_for_errors([1,2])}.not_to raise_error("Error in soundwave")
    end
    it 'outputs "Error in soundwave" when given [33,44,23,"a",5] as input array' do
      expect {band_pass_filter.check_for_errors([33,44,23,"a",5])}.to raise_error("Error in soundwave")
    end
  end
end
