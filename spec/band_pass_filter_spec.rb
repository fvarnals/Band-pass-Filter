require 'band_pass_filter'

describe BandPassFilter do
  soundwave_array = [1,2,3,4]
  lower_limit = 4
  upper_limit = 6
  band_pass_filter = BandPassFilter.new(array: soundwave_array, lower_limit: lower_limit, upper_limit: upper_limit)
  describe 'band_pass_filter' do
    it 'can store a soundwave array' do
      expect(band_pass_filter.array).to eq([1,2,3,4])
    end
    it 'has lower limit for frequencies' do
      expect(band_pass_filter.lower_limit).to eq(4)
    end
    it 'has upper limit for frequencies' do
      expect(band_pass_filter.upper_limit).to eq(6)
    end
  end

  describe 'default frequency limit values' do
    it 'if no lower limit is provided, a default value of 40 is set' do
      soundwave_array = [1,2,3,4]
      upper_limit = 100
    band_pass_filter = BandPassFilter.new(array: soundwave_array, upper_limit: upper_limit)
    expect(band_pass_filter.lower_limit).to eq(40)
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
