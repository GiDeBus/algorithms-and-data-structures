

def search(arr, num)
  min = 0
  max = arr.length - 1

  while min <= max do
    middle = ((min + max) / 2).floor
    midpoint = arr[middle]

    if midpoint < num
      min = middle + 1
    elsif midpoint > num
      max = middle - 1
    else
      return middle
    end
  end

  return -1
end
