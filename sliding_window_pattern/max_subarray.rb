

def max_sub_array(nums)
  sum = nums[0]
  temp_sum = 0

  nums.each do |element|
      temp_sum += element
      sum = temp_sum if temp_sum > sum
      temp_sum = 0 if temp_sum < 0
  end

  sum
end
