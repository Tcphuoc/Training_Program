def ternary_search (arr, target)
  left = 0
  right = arr.length - 1

  while left <= right

    mid1 = left + (right - left) / 3
    mid2 = right - (right - left) / 3
    return mid1 if arr[mid1] == target
    return mid2 if arr[mid2] == target

    case target
    when 0...arr[mid1]
      right = mid1 - 1
    when arr[mid1]...arr[mid2]
      left = mid1 + 1
      right = mid2 - 1
    else
      left = mid2 + 1
    end
  end
  -1
end

array = (1..100).to_a
target = 50
pos = ternary_search(array, target)
if pos == -1
  puts "Target #{target} not found in array"
else
  puts "Target #{target} found at index #{pos} in array"
end
