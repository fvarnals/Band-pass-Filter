require 'band_pass_filter'

describe BandPassFilter do
  subject(:band_pass_filter) {described_class.new}
  describe '#check_for_errors' do
    it 'outputs "Error in soundwave" when given ["a"] as input array' do
      expect {band_pass_filter.check_for_errors}.to raise_error("Error in soundwave")
    end
  end
end
