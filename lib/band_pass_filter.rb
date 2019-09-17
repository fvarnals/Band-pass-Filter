class BandPassFilter

  attr_reader :array, :lower_limit, :upper_limit

  def initialize(array, lower_limit, upper_limit)
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
