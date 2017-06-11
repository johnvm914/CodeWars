def list_squared(m, n)
  result = []
  while m != n do
    square_sum = m * m
    (1..(m/2)).each { |x| square_sum += (x * x) if (m % x == 0) }
    if (Math.sqrt(square_sum) % 1) == 0
      result << [m, square_sum]
    end
    m += 1
  end
  return result
end