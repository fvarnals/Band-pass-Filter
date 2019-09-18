class BandPassFilter

  attr_reader :array, :lower_limit, :upper_limit

  def initialize(array:, lower_limit: 40, upper_limit: 1000)
    @array = check_for_errors(array)
    @lower_limit = check_input(lower_limit, 'lower limit')
    @upper_limit = check_input(upper_limit, 'upper limit')
  end

  def check_for_errors(array)
    if array.length > 44100
      raise "Soundwave array exceeds maximum number of values (44100)"
    end
    
    array.each do
      |frequency|
      if !frequency.is_a? Integer
        raise_error('soundwave')
      end
    end
    return array
  end

  def raise_error(name)
    raise "Error in #{name}"
  end

  def check_input(limit, name)
    if limit.is_a? Integer
      return limit
    else
      raise_error(name)
    end
  end

end
