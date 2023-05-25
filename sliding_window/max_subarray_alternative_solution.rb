

def max_sub_array(nums)
  sum = nums.first
  largest_sum = sum

  (1...nums.length).each do |i|
    sum = nums[i] + (sum.negative? ? 0 : sum)
    largest_sum = [sum, largest_sum].max
  end

  largest_sum
end
