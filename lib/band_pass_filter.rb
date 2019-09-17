class BandPassFilter

  attr_reader :array, :lower_limit, :upper_limit

  def initialize(array:, lower_limit: 40, upper_limit: 1000)
    @array = array
    @lower_limit = lower_limit
    @upper_limit = upper_limit
  end

  def check_for_errors(array)
    array.each do
      |frequency|
      if !frequency.is_a? Integer
        raise "Error in soundwave"
      end
    end
  end
end
