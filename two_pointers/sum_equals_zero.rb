

def sum_zero(arr)
  left = 0
  right = arr.length - 1

  while left < right do
    sum = arr[left] + arr[right]
    return [arr[left], arr[right]] if sum == 0
    sum > 0 ? right -= 1 : left+= 1
  end
end
