class BandPassFilter

  def check_for_errors(array)
    array.each do
      |frequency|
      if !frequency.is_a? Integer
        raise "Error in soundwave"
      end
    end
  end
end
