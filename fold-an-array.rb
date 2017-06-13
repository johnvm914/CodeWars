def fold_array(array, runs)
  result = []
  length = array.length
  runs.times do
    result.clear
    x = 0
    y = -1
    (length/2).times do
      result << array[x] + array[y]
      x += 1
      y += -1
    end
    if length.odd?
      result << array[y]
    end
    length = result.length
    array = result.dup
  end  
  return result
end