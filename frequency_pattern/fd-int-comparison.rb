

def same(arr1, arr2)
  return false if arr1.length != arr2.length
  
  frequency_counter1 = {}
  frequency_counter2 = {}
  
  arr1.each do |val|
    frequency_counter1[val] = (frequency_counter1[val] || 0) + 1
  end
  
  arr2.each do |val|
    frequency_counter2[val] = (frequency_counter2[val] || 0) + 1
  end
  
  frequency_counter1.each_key do |key|
    if !(key ** 2).in? frequency_counter2
      return false
    end
    
    if frequency_counter2[key ** 2] != frequency_counter1[key]
      return false
    end
  end
  
  return true
end
