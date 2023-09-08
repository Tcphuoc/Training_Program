def ascending(arr, target)
  left = 0
  right = arr.length - 1

  while left <= right
    mid = (left + right) / 2
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

def descending(arr, target)
  left = 0
  right = arr.length - 1

  while left <= right
    mid = (left + right) / 2
    if arr[mid] == target
      return mid
    elsif arr[mid] > target
      left = mid + 1
    else
      right = mid - 1
    end
  end

  -1
end

def print_result(target, pos)
  if pos == -1
    puts "Target #{target} not found in array"
  else
    puts "Target #{target} found at index #{pos} in array"
  end
end

array1 = [1, 2, 3, 4, 7, 8, 10, 13, 15]
array2 = [20, 17, 15, 10, 9, 7, 3, 1, 0]
target = 13

puts '======= Search ascending array ========='
print_result(target, ascending(array1, target))

puts '======= Search descending array ========='
print_result(target, descending(array2, target))
