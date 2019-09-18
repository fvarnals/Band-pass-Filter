class BandPassFilter

  attr_reader :array, :lower_limit, :upper_limit

  def initialize(array:, lower_limit: 40, upper_limit: 1000)
    @array = array

    if lower_limit.is_a? Integer
      @lower_limit = lower_limit
    else
      raise "Error in lower limit"
    end
    
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
