class BandPassFilter

  attr_reader :array, :lower_limit, :upper_limit

  def initialize(array:, lower_limit: 40, upper_limit: 1000)
    @array = array
    @lower_limit = check_input(lower_limit, 'lower limit')
    @upper_limit = check_input(upper_limit, 'upper limit')
  end

  def check_for_errors(array)
    array.each do
      |frequency|
      if !frequency.is_a? Integer
        raise_error('soundwave')
      end
    end
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
