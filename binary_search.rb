def binary_search(nums, target)
  low = 0
  high = nums.size - 1

  return low if nums[low] == target
  return high if nums[high] == target

  while low + 1 < high
    mid = (low + high) / 2

    if nums[mid] < target
      low = mid
    elsif nums[mid] > target
      high = mid
    else
      return mid
    end
  end

  nil
end
