class BandPassFilter

  attr_reader :array

  def initialize(array)
    @array = array
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
