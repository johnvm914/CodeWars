def find_outlier(integers)
  if (integers[0] % 2) == (integers[1] % 2)
    integers[2..-1].each do |integer|
      if (integer % 2) != (integers[0] % 2)
        return integer
      end
    end
  elsif (integers[2] % 2) == (integers[0] % 2)
    return integers[1]
  else
    return integers[0]
  end
end