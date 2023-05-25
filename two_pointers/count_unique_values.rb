

def count_unique_values(arr)
  return 0 if arr.length.zero?
  
  i = 0
  
  (1...arr.length).each do |j|
    if arr[i] != arr[j]
      i += 1
      arr[i] = arr[j]
    end
  end
  
  return i + 1
end
