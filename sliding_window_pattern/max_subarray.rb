

def max_sub_array(nums)
  max = nums[0]
  temp_sum = 0

  nums.each do |element|
      temp_sum += element
      max = temp_sum if temp_sum > max
      temp_sum = 0 if temp_sum < 0
  end
  max
end
