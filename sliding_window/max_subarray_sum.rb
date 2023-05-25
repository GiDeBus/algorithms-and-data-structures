

def max_subarray_sum(arr, num)
  return null if num > arr.length
  max_sum = 0
  temp_sum = 0

  num.times do |number|
    max_sum += arr[number]
  end

  temp_sum = max_sum

  (num...arr.length).each do |i|
    temp_sum = temp_sum - arr[i - num] + arr[i]
    max_sum = [max_sum, temp_sum].max
  end

  return max_sum
end
