def interpolation_search(arr, target)
  left = 0
  right = arr.length - 1

  while left <= right
    mid = left + (target - arr[left]) * (right-left) / (arr[right] - arr[left])
    return -1 if mid < left || mid > right

    if arr[mid] == target
      return mid
    elsif arr[mid] > target
      right = mid - 1
    else
      left = mid + 1
    end
  end

  -1
end

array = [1, 2, 3, 4, 7, 8, 10, 13, 15]
target = 6
pos = interpolation_search(array, target)
if pos == -1
  puts "Target #{target} not found in array"
else
  puts "Target #{target} found at index #{pos} in array"
end